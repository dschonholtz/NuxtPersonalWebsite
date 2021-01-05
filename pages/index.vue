<template>
  <div>
    <Header/>
    <div class="container">
      <ul>
        <li v-for="article of articles" :key="article.slug" class="card">
          <NuxtLink :to="{ name: 'blog-slug', params: { slug: article.slug } }" class="card--link">
            <img :src="article.img" width="100"/>
            <div>
              <h2>{{ article.title }}</h2>
              <p>by {{ article.author.name }}</p>
              <p>{{ article.description }}</p>
            </div>
          </NuxtLink>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
  export default {
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

<style scoped lang="scss">
  .card {
    /* Add shadows to create the "card" effect */
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    list-style: none;
    width: 30rem;
    border-radius: 8px;

    &--link {
      display: inline-flex;
      flex-direction: row;
      > * {
        margin: .5rem .5rem;
      }
    }


   &:hover {
      box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    }
  }
  li {
    padding: .5rem 1rem;
    margin: .5rem 1rem;
  }
  ul {
    display: flex;
    flex-flow: wrap;
  }
</style>>