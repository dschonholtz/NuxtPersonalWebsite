<template>
  <div class="search--wraper">
    <input
      v-model="searchQuery"
      type="\uf002; Search"
      autocomplete="off"
      placeholder="Search"
      class="search"
    />
    <ul v-if="articles.length">
      <li v-for="article of articles" :key="article.slug">
        <NuxtLink :to="{ name: 'blog-slug', params: { slug: article.slug } }">
          {{ article.title }}
        </NuxtLink>
      </li>
    </ul>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        searchQuery: '',
        articles: [],
      }
    },
    watch: {
      async searchQuery(searchQuery) {
        if (!searchQuery) {
          this.articles = []
          return
        }
        this.articles = await this.$content('articles')
          .limit(6)
          .search(searchQuery)
          .fetch()
      }
    }
  }
</script>

<style scoped lang="scss">

  li {
    list-style: none;
  }

  .search {
    border-radius: 8px;
    height: 2rem;
    width: 9rem;
    margin: .5rem;
    border:1px solid $color-grey-dark-2;

    transition: all .45s;

    &:focus {
      outline: none !important;
      border:1px solid $color-grey-dark-2;
      box-shadow: 0 0 10px $color-grey-dark-2;
      width: 10rem;
    }
  
      &--wrapper {
        max-width: 12rem;
        height: 2.5rem;
      }
  }
  ::placeholder {
    color: $color-grey-dark-2;
  }


</style>