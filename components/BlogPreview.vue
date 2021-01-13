<template>
  <NuxtLink :to="{ name: 'blog-slug', params: { slug: article.slug } }" class="card--link">
    <div>
      <h2>{{ article.title }}</h2>
      <p>{{ article.description }}</p>
      <p>Last Updated: {{ article.updatedAt }}</p>
    </div>
  </NuxtLink>
</template>

<script>
  export default {
    props: ['article']
  }
</script>

<style scoped lang="scss">
  .card--link {
    display: inline-flex;
    flex-direction: row;
    text-decoration: none;
    color: $color-grey-dark-3;
    margin: 1.5rem 1.5rem;
    transition: all .2s ease-in;
    &:hover {
      margin: 1.5rem 3.5rem;
    }
  }
</style>
