<template>
    <div class="container">
        <h1 class="mb-3">Все пользователи</h1>
        <spinner v-if="loading"></spinner>
        <table class="table" v-else-if="!loading && !error">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Фамилия</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Отчество</th>
                    <th scope="col">E-mail</th>
                    <th scope="col">Дата регистрации</th>
                    <th scope="col">Дата Изменения</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="user in users">
                    <th scope="row">{{user.id}}</th>
                    <td>{{user.first_name}}</td>
                    <td>{{user.surname}}</td>
                    <td>{{user.last_name}}</td>
                    <td>{{user.email}}</td>
                    <td>{{user.created_at}}</td>
                    <td>{{user.updated_at}}</td>
                    <td>
                        <router-link :to="`/users/${user.id}`"  class="btn btn-primary">Посмотреть</router-link>
                        <router-link :to="`/users/${user.id}/edit`" class="btn btn-warning">Изменить</router-link>
                        <a href="#" class="btn btn-danger" onclick="return confirm('Вы уверены? Пользователь будет удален навсегда!')">Удалить</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="alert alert-danger" v-if="error">Страница не найдена</div>
    </div>
</template>

<script>
    import Spinner from "../parts/Spinner.vue";
    export default {
        components: {
            Spinner
        },
        data() {
            return {
                loading: true,
                error: false,
                users: []
            }
        },
        mounted() {
            this.loadUsers()
        },
        methods: {
            loadUsers() {
                axios.
                    get('/api/users')
                    .then(response => {
                        this.users = response.data;
                        setTimeout(() => {
                            this.loading = false;
                        }, 500)
                    })
                    .catch(err => {
                        this.error = true
                        this.loading = false;
                    })
            }
        }
    }
</script>

<style scoped>

</style>