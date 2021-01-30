<template>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">Laravel-crud</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li v-for="link in links" class="nav-item">
                            <router-link class="nav-link" :to="link.href">{{link.title}}</router-link>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</template>

<script>
    export default {
        data() {
            return {
                links: [
                    {
                        title: 'Главная',
                        href: "/"
                    },
                    {
                        title: 'Все пользователи',
                        href: "/users"
                    },
                    {
                        title: "Все заказы",
                        href: "/orders"
                    },
                    {
                        title: "Добавить пользователя",
                        href: "/create"
                    }

                ]
            }
        }
    }
</script>

<style scoped>

</style>