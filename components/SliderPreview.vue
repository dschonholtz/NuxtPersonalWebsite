<template>
    <NuxtLink :to="{ name: 'blog-slug', params: { slug: article.slug } }">
        <div class="uk-panel" ratio: false; uk-height-viewport="offset-bottom: 20">
            <img :src="require(`~/assets/img/${article.img}`)" alt="plz">
            <div class="uk-position-center uk-text-center">
                <h2 uk-slider-parallax="x: 100,-100">{{ article.title }}</h2>
            </div>
        </div>
    </NuxtLink>
</template>

<script>
  export default {
    props: ['article']
  }
</script>

<style scoped lang="scss">
img {
      z-index: 999;
}
</style>
