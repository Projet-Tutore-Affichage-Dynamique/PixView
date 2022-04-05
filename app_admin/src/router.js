import { createWebHistory, createRouter } from 'vue-router';
import AppHome from './components/AppHome.vue';
import AppLogin from './components/AppLogin.vue';
import AppGDDevices from './components/AppGDDevices.vue';
import AppGDAdmins from './components/AppGDAdmins.vue';
//import AppGCDevices from './components/AppGCDevices.vue';
//import AppGCSequences from './components/AppGCSequences.vue';
//import AppGCPlanning from './components/AppGCPlanning.vue';
//import AppNotFound from './components/_partials/AppNotFound.vue';

const routes = [
    {
        path: '/',
        name: 'Home',
        component: AppHome
    },
    {
        path: '/login',
        name: 'Login',
        component: AppLogin
    },
    /** Gestionnaires de domaines **/
    {
        path: '/gest_dom/devices',
        name: 'GD_Devices',
        component: AppGDDevices
    },
    {
        path: '/gest_dom/admins',
        name: 'GD_Admins',
        component: AppGDAdmins
    },
    /** Gestionnaires de contenues **/
    /**{
        path: '/gest_cont/devices',
        name: 'GC_Devices',
        component: AppGCDevices
    },
    {
        path: '/gest_cont/sequences',
        name: 'GC_Sequences',
        component: AppGCSequences
    },
    {
        path: '/gest_cont/planning',
        name: 'GC_Planning',
        component: AppGCPlanning
    },
    {
        path: '/:pathMatch(.*)*',
        name: 'NotFound',
        component: AppNotFound
    }**/
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;
