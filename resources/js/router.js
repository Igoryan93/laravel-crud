import vueRouter from 'vue-router';
import Vue from 'vue';

Vue.use(vueRouter);

import OrdersTotal from "./components/views/OrdersTotal.vue";
import Users from "./components/views/Users.vue";
import Edit from "./components/views/Edit.vue";
import Create from "./components/views/Create.vue";
import Orders from "./components/views/Orders.vue";
import ShowUser from "./components/views/Show.vue";
import Page404 from "./components/views/errors/Page404.vue";

const routes = [
    {
        path: '/',
        component: OrdersTotal
    },
    {
        path: '/users',
        component: Users
    },
    {
        path: '/users/:id',
        component: ShowUser
    },
    {
        path: '/users/:id/edit',
        component: Edit
    },
    {
        path: '/create',
        component: Create
    },
    {
        path: '/orders',
        component: Orders
    },
    {
        path: '*',
        component: Page404
    }
];

export default new vueRouter({
    mode: "history",
    routes
});