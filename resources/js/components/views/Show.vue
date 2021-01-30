<template>
    <div class="container">
        <h1>Пользователь {{user.first_name + ' ' + user.surname + ' ' + user.last_name }}</h1>
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
                    <th scope="col">Дата обновления</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">{{user.id}}</th>
                    <td>{{user.first_name}}</td>
                    <td>{{user.surname}}</td>
                    <td>{{user.last_name}}</td>
                    <td>{{user.email}}</td>
                    <td>{{user.created_at}}</td>
                    <td>{{user.updated_at}}</td>
                </tr>
            </tbody>
        </table>
        <div class="alert alert-danger" v-if="error">Такого пользователя не существует</div>
    </div>
</template>

<script>
    import Spinner from "../parts/Spinner";
    export default {
        components: {
            Spinner
        },
        data() {
            return {
                loading: true,
                error: false,
                user: []
            }
        },
        mounted() {
            this.getUser(this.$route.params.id)
        },
        methods: {
            getUser(id) {
                axios
                    .get('/api/users/' + id)
                    .then(response => {
                        this.user = response.data
                        setTimeout(() => {
                            this.loading = false
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