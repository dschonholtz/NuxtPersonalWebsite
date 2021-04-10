<template>
<nav class="uk-navbar-container" uk-navbar>
    <div class="nav-overlay uk-navbar-left">
        <NuxtLink class="uk-navbar-item uk-logo" to="/">Daily Progress</NuxtLink>
        <ul class="uk-navbar-nav">
            <li><NuxtLink to="/blog/About">About</NuxtLink></li>
        </ul>
    </div>

    <div class="nav-overlay uk-navbar-right">
        <app-search-input/>
    </div>

    <div class="nav-overlay uk-navbar-left uk-flex-1" hidden>

        <div class="uk-navbar-item uk-width-expand">
            <form class="uk-search uk-search-navbar uk-width-1-1">
                <input class="uk-search-input" type="search" placeholder="Search" autofocus>
            </form>
        </div>

        <a class="uk-navbar-toggle" uk-close uk-toggle="target: .nav-overlay; animation: uk-animation-fade" href="#"></a>

    </div>

</nav>

</template>

<style scoped lang="scss">
</style>