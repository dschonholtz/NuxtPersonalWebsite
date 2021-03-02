<template>
  <div>
    <div class="container">
        <div v-for="article of articles" :key="article.slug">
          <blog-preview :article="article"></blog-preview>
        </div>
    </div>
  </div>
</template>

<script>
import BlogPreview from "~/components/BlogPreview.vue"

  export default {
    components: { BlogPreview },
    async asyncData({ $content, params }) {
      const articles = await $content('articles', params.slug)
        .only(['title', 'description', 'img', 'slug', 'author'])
        .sortBy('createdAt', 'asc')
        .fetch()

      return {
        articles
      }
    }
  }
</script>

<style lang="scss">
  .container {
    margin: 2rem;
    margin-top: 1rem;
    transition: all .15s;
    &:focus {
        margin: 3rem;
    }
  }
</style>
