<template>
    <div class=" py-4 container">
        <!-- Titulo del producto -->
        <div class="grid grid-cols-12 py-2">
            <div class="col-span-3">
                <RenderImage style="width: 100px;" class=" text-left" :hasImg="true" :imdId="DetallesEquipo.marcaId" :typeImg="'Marcas'" />
            </div>
            <div class="col-span-9">
                <h1 class="text-2xl font-extrabold tracking-tight"> {{ DetallesEquipo.etiquetaTablero }}</h1>
            </div>
        </div>

        <!-- Detalles Equipos  -->
        <DetallesEquipoComponent :equipo="DetallesEquipo" />

        <!-- Caracteristicas Equipos -->
        <CaracteristicasEquipoComponent :equipo="DetallesEquipo.caracteristicas" />

        <!-- Mostramos la imagen -->
        <RenderImage class="py-4" :hasImg="DetallesEquipo.imgActive" :imdId="DetallesEquipo.nombreModeloId" :typeImg="'ModeloEquipo'" />

        <!-- PONEMOS LA TABLA DE PUERTOS , SI ES QUE EXISTE  -->
        <PuertosTable v-if="DetallesEquipo.puertos_especificos" :puertos="DetallesEquipo.puertos" />

        <!-- Notas / Observaciones --- Codigo QR-->
      

        <div>

        </div>

    </div>
</template>

<script>
import RenderImage from '../components/RenderImage.vue'
import DetallesEquipoComponent from '../components/detallesEquipo.vue'
import CaracteristicasEquipoComponent from '../components/CaracteristicasEquipo.vue'
import PuertosTable from '../components/PuertosTable.vue'
import { useTaskStore } from '../stores/taskStore';

      
  

export default {
    components: { RenderImage, DetallesEquipoComponent, CaracteristicasEquipoComponent, PuertosTable },
    props: ['idProduct'],
    data() {
        return {
            DetallesEquipo: [],
            readyToRead: false,
            taskstore: useTaskStore()
        }
    },
    methods: {
        setUpTree() {
            console.log('funcion setUpTree');
        },
        async getTreeView() {
            try {
                //obtenemos detalles equipo
                const res = await fetch(this.taskstore.ipAddress+'/equipo/' + this.idProduct)
                const detalles = await res.json()
                this.DetallesEquipo = detalles[0]

                //obtener caracteristicas
                const res2 = await fetch(this.taskstore.ipAddress+'/equipoInfoExtra/' + this.idProduct)
                const ficha = await res2.json()
                this.DetallesEquipo.caracteristicas = ficha

                //obtener puertos , solo si puertos es true
                if (this.DetallesEquipo.puertos_especificos) {
                    const res3 = await fetch(this.taskstore.ipAddress+'/equipoPuertosEspecificos/' + this.idProduct)
                    const puertos = await res3.json()
                    this.DetallesEquipo.puertos = puertos
                }


                this.readyToRead = true

            } catch (error) {
                console.log('se produjo un error en la consulta')
                console.log(error);
            }
        }
    },
    async mounted() {
        await this.getTreeView();
        console.log('4. TREE LOADED AND VISIBLE');
    }
}

</script>