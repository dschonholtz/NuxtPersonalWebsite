<template>
  <div class="header">
     <NuxtLink to="/" class="nuxt-link">
      <h1 class="title">Percent Every Week</h1>
     </NuxtLink>
    <span class="search">
      <AppSearchInput />
    </span>
  </div>
</template>

<style scoped lang="scss">
  .search {
    max-width: 12rem;
  }
  .header {
    background-color: $color-grey-light-2;
    display: flex;
    justify-content: space-between;
  }
  .title {
    margin-inline: 1rem;
  }
</style>