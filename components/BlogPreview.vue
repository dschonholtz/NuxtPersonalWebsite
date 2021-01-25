<template>
  <NuxtLink :to="{ name: 'blog-slug', params: { slug: article.slug } }" class="card--link">
    <div>
      <h2>{{ article.title }}</h2>
      <p>{{ article.description }}</p>
      <img :src="require(`~/assets/img/${article.img}`)" :alt="article.alt" class="image-preview"/>
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
    transition: all .2s ease-in-out;
    animation-name: fade;
    animation-duration: 1.25s;
    animation-timing-function: ease-in-out;
    position: relative;
    &:hover {
      margin: 1.5rem 2.5rem;
    }
  }

  .image-preview {
    display: block;
    max-height:4vh;
    width: auto;
    height: auto;
  }

  @keyframes fade {
    0% {
      opacity: 0;
      left: 2vw;
    }
    100% {
      left: 0vw;
      opacity: 1;
    }
  }
</style>
