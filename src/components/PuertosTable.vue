<template>
    <div>
        <div class="grid grid-cols-12 text-[12px] ">

            <div class="col-span-2 bg-gray-200 "> ORIGEN </div>
            <div class="col-span-1 bg-gray-200">PTO </div>
            <div class="col-span-2 bg-gray-200">TIPO</div>
            <div class="col-span-4 bg-gray-200">SERVICIO</div>
            <div class="col-span-3 bg-gray-200">DESTINO</div>

            <template v-for="puerto in puertos">
                <div class="col-span-1 border-b-2 border-gray-300">{{ puerto.dir_origen }}</div>
                <div class="col-span-1 border-b-2 border-gray-300">{{ puerto.atenuacion_origen }}</div>
                <div class="col-span-1 border-b-2 border-gray-300">{{ puerto.numero_de_puerto }}</div>
                <div class="col-span-2 border-b-2 border-gray-300">{{ puerto.tipo_cable }}</div>
                <div class="col-span-4 border-b-2 border-gray-300">
                    {{ puerto.servicio }}
                    <p v-if="puerto.observacion != '' " class="text-gray-500 text-[10px]" >{{ puerto.observacion }}</p>
                </div>
                <div class="col-span-1 border-b-2 border-gray-300">{{ puerto.atenuacion_destino }}</div>
                <div class="col-span-2 border-b-2 border-gray-300">{{ puerto.dir_destino }}</div>
            </template>

        </div>
    </div>
</template>
  
<script>
export default {
    props: ['puertos'],
    data() {
        return {
        }
    },
    methods: {
        detallesEquipo(idEquipo) {
            console.log('click en funcion: ' + idSe);
        }
    }
}
</script>