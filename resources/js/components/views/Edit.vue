<template>
    <div class="container">
        <h1 class="mb-3">Изменить данные пользователя</h1>
        <div class="row">
            <div class="col-md-6">
                <form action="" method="POST">
                    <div class="form-group mb-3">
                        <label for="first_name" class="mb-1">Имя</label>
                        <input type="text" id="first_name" name="first_name" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="surname" class="mb-1">Фамилия</label>
                        <input type="text" id="surname" name="surname" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="last_name" class="mb-1">Отчество</label>
                        <input type="text" id="last_name" name="last_name" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="email" class="mb-1">E-mail</label>
                        <input type="email" id="email" name="email" disabled class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-warning" value="Изменить данные">
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Edit"
    }
</script>

<style scoped>

</style>