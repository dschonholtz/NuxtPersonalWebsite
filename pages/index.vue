<template>
<div>
  <div class="uk-section uk-section-default uk-padding-remove-vertical">
    <div class="uk-container uk-container-xlarge">
      <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slider>

        <ul class="uk-slider-items uk-grid">
            <li v-for="article of articles" :key="article.slug" class="uk-width-1-1">
                <slider-preview :article="article"></slider-preview>
            </li>
        </ul>

        <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
        <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

      </div>
    </div>
  </div>
  
  <div class="uk-section uk-section-default">
    <div class="uk-container uk-container-large">
      <div class="uk-grid-medium uk-child-width-expand@s uk-text-center" uk-scrollspy="cls: uk-animation-fade; target: .uk-card; delay: 400; repeat: true" uk-grid>
            <div v-for="article of articles" :key="article.slug">
              <blog-preview :article="article"></blog-preview>
            </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>
import BlogPreview from "~/components/BlogPreview.vue"
import SliderPreview from "~/components/SliderPreview.vue"

  export default {
    components: { BlogPreview, SliderPreview },
    async asyncData({ $content, params }) {
      const articles = await $content('articles', params.slug)
        .only(['title', 'description', 'img', 'slug', 'author'])
        .sortBy('createdAt', 'des')
        .fetch()

      return {
        articles
      }
    }
  }
</script>

<style lang="scss" scoped>
.sixty {
  max-height: 10% !important ;
}
</style>
