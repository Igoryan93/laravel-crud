<template>
    <div class="container">
        <h1 class="mb-3">Все заказы</h1>
        <spinner v-if="loading"></spinner>
        <table class="table" v-else-if="!loading && !error">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Номер заказа</th>
                    <th scope="col">Сумма заказа</th>
                    <th scope="col">Время заказа</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="order in orders">
                    <td>{{order.id}}</td>
                    <td>{{order.order_number}}</td>
                    <td>{{order.price}}</td>
                    <td>{{order.created_at}}</td>
                </tr>
            </tbody>
        </table>
        <div class="alert alert-danger" v-if="error">Страница не найдена</div>
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
                orders: []
            }
        },
        mounted() {
            this.getOrders()
        },
        methods: {
            getOrders() {
                axios
                    .get('/api/orders')
                    .then(response => {
                        this.orders = response.data.orders
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