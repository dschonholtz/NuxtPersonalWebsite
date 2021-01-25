<template>
  <div class="header">
     <NuxtLink to="/" class="nuxt-link">
      <SiteLogo/>
     </NuxtLink>
    <span class="search">
      <AppSearchInput />
    </span>
  </div>
</template>

<style scoped lang="scss">
  .search {
    max-width: 14rem;
  }
  .header {
    background-color: $color-grey-light-2;
    display: flex;
    justify-content: space-between;
    width: 100vw;
    height: 4rem;
  }
</style>