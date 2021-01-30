<template>
    <div class="container">
        <h1 class="mb-3">Все пользователи</h1>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">ФИО</th>
                <th scope="col">E-mail</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>
                    <a href="#" class="btn btn-primary">Посмотреть</a>
                    <a href="#" class="btn btn-warning">Изменить</a>
                    <a href="#" class="btn btn-danger" onclick="return confirm('Вы уверены? Пользователь будет удален навсегда!')">Удалить</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
    export default {
        name: "Users"
    }
</script>

<style scoped>

</style>