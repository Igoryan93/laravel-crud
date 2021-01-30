<template>
    <div class="container">
        <h1 class="mb-3">Все заказы</h1>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">ФИО</th>
                <th scope="col">Номер заказа</th>
                <th scope="col">Сумма заказа</th>
                <th scope="col">Время заказа</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>123123</td>
                <td>123</td>
                <td>Дата</td>
            </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
    export default {
        name: "Orders"
    }
</script>

<style scoped>

</style>