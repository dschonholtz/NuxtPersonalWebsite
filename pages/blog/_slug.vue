<template>
  <div class="content-container">
    <article>
      <img :src="require(`~/assets/img/${article.img}`)" :alt="article.alt" class="image-header"/>
      <div class="meta-info">
        <h1>{{ article.title }}</h1>
        <p>{{ article.description }}</p>
        <p>Last updated: {{ formatDate(article.updatedAt) }}</p>
        <br/>
      </div>
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

  .meta-info {
    max-width: $default-content-width;
    margin-left: auto;
    margin-right: auto;
    padding-left: 2rem;
    padding-right: 2rem;
  }

  .nuxt-content {
    max-width: $default-content-width;
    margin-left: auto;
    margin-right: auto;
    padding-left: 2rem;
    padding-right: 2rem;
  }

  .nuxt-content h1 {
    font-weight: bold;
    font-size: 32px;
    padding-top: 1rem;
    padding-bottom: 1rem;
  }

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

  .nuxt-content ul {
    padding-bottom: 1rem;
  }

  .image-header {
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
</style>