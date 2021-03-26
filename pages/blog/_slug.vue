<template>
  <div>
    <div class="uk-section uk-section-default uk-padding-remove-vertical">
      <div class="uk-container uk-container-large">
        <h1 class="uk-article-title">{{ article.title }}</h1>
        <p class="uk-article-meta">Published: {{this.formatDate(article.createdAt) }}</p>
        <img :src="require(`~/assets/img/${article.img}`)" :alt="article.alt" class="article-img uk-align-center">
        <article class="uk-article">
          <nav class="toc">
            <ul>
              <li v-for="link of article.toc" :key="link.id">
                <NuxtLink :to="`#${link.id}`">{{ link.text }}</NuxtLink>
              </li>
            </ul>
          </nav>
          <p class="uk-text-lead">
            {{ article.description }}
          </p>

          <nuxt-content :document="article" />
        </article>
      </div>
    </div>
    <div class="uk-section uk-section-default">
      <div class="uk-container uk-container-large">
        <div class="uk-grid-medium uk-child-width-expand@s uk-text-center" uk-grid>
          <div class="uk-width-1-2">
            <blog-preview v-if="this.prev" :article="this.prev"></blog-preview>
          </div>
          <div class="uk-width-1-2">
            <blog-preview  v-if="this.next" :article="this.next"></blog-preview>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    async asyncData({ $content, params }) {
    const article = await $content('articles', params.slug).fetch()

    const [prev, next] = await $content('articles')
      .only(['title', 'description', 'img', 'slug', 'author'])
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
.article-img {
  max-height: 50vh;
}

h1 .uk-article-title {
  justify-content: center;
}
</style>