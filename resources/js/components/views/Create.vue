<template>
    <div class="container">
        <h1 class="mb-3">Добавить пользователя</h1>
        <div class="alert alert-danger">
            Ошибка валидации
        </div>
        <div class="alert alert-success">
            Пользователь добавлен
        </div>
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
                </form>
            </div>
            <div class="col-md-6">
                <div class="form-group mb-3">
                    <label for="email" class="mb-1">E-mail</label>
                    <input type="email" id="email" name="email" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="password" class="mb-1">Пароль</label>
                    <input type="email" id="password" name="password" class="form-control">
                </div>
                <div class="form-group mb-3">
                    <label for="password_confirmed" class="mb-1">Повторите пароль</label>
                    <input type="email" id="password_confirmed" name="password" class="form-control">
                </div>
            </div>
            <div class="col-lg-12 d-flex justify-content-center">
                <div class="form-group">
                    <input type="submit" class="btn btn-success" value="Добавить пользователя">
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Create"
    }
</script>

<style scoped>

</style>