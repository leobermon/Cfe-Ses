import { createRouter, createWebHistory } from 'vue-router'

import PageNotFound from '../components/PageNotFound.vue'
import Directorioview from  '../components/Directorioview.vue'

import MenuInicio from '../views/MenuInicio.vue'
import ListaSubestaciones from '../views/ListaSubestaciones.vue'
import MenuSubestacion from '../views/MenuSubestacion.vue'
import PlanosView from '../views/PlanosView.vue'
import UnifilaresView from '../views/UnifilaresView.vue'
import RackView from '../views/RackView.vue'
import CargadoresView from '../views/CargadoresView.vue'
import InterruptoresView from '../views/InterruptoresView.vue'
import ListaUltimaMilla from '../views/ListaUltimaMilla.vue'
import PatchNotes from '../views/patchnotes.vue'


import enlacesOplat from '../components/maps/enlacesOplat.vue'
import enlacesOtn from '../components/maps/enlacesOtn.vue'
import enlacesEci from '../components/maps/enlacesEci.vue'

import ultimaMillaTum_Age from '../components/ultimaMilla/tulum-agencia.vue' 
import tulumPcn from '../components/ultimaMilla/tulum-pcn.vue' 
import cancun from '../components/ultimaMilla/cancun.vue'



//import qrs from '../components/qrs/chemuyil.vue'
import fo from '../views/fo.vue'
import equiposr3 from '../components/EquiposR3.vue'
import direccionesip from '../components/DireccionesIp.vue'

//agregar componente de ultima milla 

import EquipoView from '../views/EquipoView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/', 
      name: 'home',
      component: MenuInicio
    },
    {
      path: "/subestaciones",
      name: "subestaciones",
      component: ListaSubestaciones
    },
    // {
    //   path: "/qrs/:id",
    //   name: "qrs",
    //   component: qrs
    // },
    {
      path: "/equiposr3",
      name: "equiposr3",
      component: equiposr3
    },
    {
      path: "/fo/:fo",
      props:true,
      name: "fo",
      component: fo
    },
    {
      path: "/direccionesip",
      name: "direccionesip",
      component: direccionesip
    },
    {
      path: "/subestacion/:idSe",
      props: true,
      name: "",
      component: MenuSubestacion
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
      path: "/rack/:rackId",
      props: true,
      name: "",
      component: RackView
    },
    {
      path: "/enlacesOplat",
      name: "",
      component: enlacesOplat
    },
    {
      path: "/enlacesOtn",
      name: "",
      component: enlacesOtn
    },
    {
      path: "/enlacesEci",
      name: "",
      component: enlacesEci
    },
    {
      path: "/ultimamilla",
      name: "",
      component: ListaUltimaMilla
    },
    
    {
      path: "/cargadores/:rackId",
      props: true,
      name: "",
      component: CargadoresView
    },
    {
      path: "/interruptores/:rackId",
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
      path: "/directorio",
      name: "",
      component: Directorioview
    },
    // ultimas millas 
    {
      path: "/ultimaMillaTulumAgencia",
      name: "",
      component: ultimaMillaTum_Age
    },
    {
      path: "/tulumPcn",
      name: "",
      component: tulumPcn
    },
    {
      path: "/cancun",
      name: "",
      component: cancun
    },
    {
      path: "/patchnotes",
      name: "",
      component: PatchNotes
    },
   
    
    {
      path: "/:pathMatch(.*)*",
      component: PageNotFound
    }
  ]
})

export default router
