import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import SubestacionesView from '../views/SubestacionesView.vue'
import PageNotFound from '../components/PageNotFound.vue'
import MenuSubestacionView from '../views/MenuSubestacionView.vue'
import PlanosView from '../views/PlanosView.vue'
import UnifilaresView from '../views/UnifilaresView.vue'
import RackView from '../views/RackView.vue'
import CargadoresView from '../views/CargadoresView.vue'
import InterruptoresView from '../views/InterruptoresView.vue'

import EquipoView from '../views/EquipoView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: "/subestaciones",
      name: "subestaciones",
      component: SubestacionesView
    },
    {
      path: "/subestacion/:idSe",
      props: true,
      name: "",
      component: MenuSubestacionView
    },
    {
      path: "/plano/:idSubestacion",
      name: "",
      props:true,
      component: PlanosView
    },
    {
      path: "/unifilar/:idSubestacion",
      name: "",
      component: UnifilaresView
    },
    {
      path: "/rack/:rackId/:name",
      props: true,
      name: "",
      component: RackView
    },
    {
      path: "/cargadores/:rackId/:name",
      props: true,
      name: "",
      component: CargadoresView
    },
    {
      path: "/interruptores/:rackId/:name",
      props: true,
      name: "",
      component: InterruptoresView
    },
    {
      path: "/equipo/:idProduct",
      props:true,
      name: "",
      component: EquipoView
    },
    
    {
      path: "/:pathMatch(.*)*",
      component: PageNotFound
    }
  ]
})

export default router
