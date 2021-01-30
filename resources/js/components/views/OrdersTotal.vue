<template>
    <div class="container">
        <h1 class="mb-3">Общая сумма заказов отдельных пользователей</h1>
        <spinner v-if="loading"></spinner>
        <table class="table" v-else-if="!loading && !error">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Фамилия</th>
                <th scope="col">Имя</th>
                <th scope="col">Отчество</th>
                <th scope="col">E-mail</th>
                <th scope="col">Общая сумма</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="order in ordersTotal">
                <th scope="row">{{order.user_id}}</th>
                <td>{{order.user['surname']}}</td>
                <td>{{order.user['first_name']}}</td>
                <td>{{order.user['last_name']}}</td>
                <td>{{order.user['email']}}</td>
                <td>{{order.total_price}}</td>
            </tr>
            </tbody>
        </table>
        <div class="alert alert-danger" v-if="error"></div>
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
                ordersTotal: []
            }
        },
        mounted() {
            this.getOrdersTotal()
        },
        methods: {
            getOrdersTotal() {
                axios
                    .get('/api/orders_total')
                    .then(response => {
                        this.ordersTotal = response.data.users
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