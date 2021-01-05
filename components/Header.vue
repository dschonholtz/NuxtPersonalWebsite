<template>
  <div class="header">
     <NuxtLink to="/">
      <h1 class="title">A Percent Every Week</h1>
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
    background-color: black;
    display: flex;
    justify-content: space-between;
  }
</style>