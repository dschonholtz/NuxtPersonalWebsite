<template>
  <div class="container">
    <article>
      <h1>{{ article.title }}</h1>
      <img :src="require(`~/assets/img/${article.img}`)" :alt="article.alt" class="image-header"/>
      <p>{{ article.description }}</p>
      <p>Last updated: {{ formatDate(article.updatedAt) }}</p>

      <nav class="toc">
        <ul>
          <li v-for="link of article.toc" :key="link.id">
            <NuxtLink :to="`#${link.id}`">{{ link.text }}</NuxtLink>
          </li>
        </ul>
      </nav>

      <nuxt-content :document="article" />
      <author :author="article.author"></author>
      <prev-next :prev="prev" :next="next" />
    </article>
  </div>
</template>

<script>
  export default {
    async asyncData({ $content, params }) {
    const article = await $content('articles', params.slug).fetch()

    const [prev, next] = await $content('articles')
      .only(['title', 'slug'])
      .sortBy('createdAt', 'asc')
      .surround(params.slug)
      .fetch()

    return {
      article,
      prev,
      next
    }
  },
    methods: {
        formatDate(date) {
          const options = { year: 'numeric', month: 'long', day: 'numeric' }
          return new Date(date).toLocaleDateString('en', options)
        }
    }
  }
</script>

<style lang="scss">
  .nuxt-content h2 {
    font-weight: bold;
    font-size: 28px;
  }
  .nuxt-content h3 {
    font-weight: bold;
    font-size: 22px;
  }
  .nuxt-content p {
    margin-bottom: 20px;
  }

  .image-header {
    max-height: 20vh;
    max-width: 80vw;
    display: block;
    margin-left: auto;
    margin-right: auto;
    margin-top: 1rem;
    margin-bottom: 1rem;
  }
  .toc {
    color: $color-grey-dark-2;
    margin: 1rem;
  }
  .container {
    flex: 1;
    flex-grow: 0;
    flex-basis: 80%;
    margin: 0;

  }
</style>