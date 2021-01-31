<template>
    <div class="container create">
        <h1 class="mb-3">Добавить пользователя</h1>
        <spinner v-if="loading"></spinner>
        <div class="alert alert-danger" v-else-if="valError">
           {{valError}}
        </div>
        <div class="alert alert-success" v-else-if="success">
            Пользователь добавлен
        </div>
        <form>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group mb-3">
                        <label for="first_name" class="mb-1">Имя</label>
                        <input type="text" id="first_name" v-model="form.first_name" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="surname" class="mb-1">Фамилия</label>
                        <input type="text" id="surname" v-model="form.surname" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="last_name" class="mb-1">Отчество</label>
                        <input type="text" id="last_name" v-model="form.last_name" class="form-control">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mb-3">
                        <label for="email" class="mb-1">E-mail</label>
                        <input type="email" id="email" v-model="form.email" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="password" class="mb-1">Пароль</label>
                        <input type="password" id="password" v-model="form.password" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="password_confirmed" class="mb-1">Повторите пароль</label>
                        <input type="password" id="password_confirmed" v-model="form.password_confirmation" class="form-control">
                    </div>
                </div>
                <div class="col-lg-12 d-flex justify-content-center">
                    <div class="form-group">
                        <input type="submit" class="btn btn-success" value="Добавить пользователя" @click.prevent="store">
                    </div>
                </div>
            </div>
        </form>
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
                loading: false,
                form: {
                    first_name: '',
                    surname: '',
                    last_name: '',
                    email: '',
                    password: '',
                    password_confirmation: ''
                },
                valError: '',
                success : false
            }
        },
        methods: {
            store() {
                this.loading = true;
                axios
                    .post('/api/users', this.form, {
                        header: {
                            "Content-type" : "application/json"
                        }
                    })
                    .then(response => {
                        if(response.data.status) {
                            setTimeout(() => {
                                this.success = true;
                                this.valError = false;

                                this.form.first_name =
                                this.form.surname =
                                this.form.last_name =
                                this.form.email  =
                                this.form.password  =
                                this.form.password_confirmation = '';

                                this.loading = false;

                            }, 500)
                        }
                    })
                    .catch(err => {
                        setTimeout(() => {
                            this.valError = err.response.data.errors;
                            this.success = false;
                            this.loading = false;
                        }, 500)
                    })
            }
        }
    }
</script>

<style scoped>

</style>