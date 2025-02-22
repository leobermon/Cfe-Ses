<template>
    <div class="grid-cols-12 grid gap-x-2 gap-12 p-4 ">

 
        <div class="sm:col-span-9 col-span-12 ">

            <GoogleMap api-key="AIzaSyDcSa_dd4vPlcEFJZLzsLt-f75X79aSzM0" :style="estilosMapa" :center="center"
                :zoom="currentZoom" :min-zoom="9" :max-zoom="20" :restriction="restriction" :styles="estilosMapa">

                <!-- mostramos ruta alestra  -->
                <template v-for="poli in polis">
                    <Polyline :options="poli" />
                </template>

                <template v-for="b in polis">
                    <template v-for="a in b.path">
                        <Marker class="text-morado" :options="{ position: a, icon: icon }"></Marker>
                        <CustomMarker :options="{ position: a, anchorPoint: 'TOP_CENTER' }" class="">
                            <div style="text-align: center; ">
                                <div style="font-size: 1rem" class="font-bold"> </div>
                            </div>
                        </CustomMarker>
                    </template>
                </template>
                <!-- terminamos de mostrar ruta alestra  -->

            </GoogleMap>

        </div>
        <div class="  sm:col-span-3 col-span-12">

            <h3 class="mb-4 font-semibold text-gray-900 ">Selecciona Ultima Milla </h3>
            <ul class=" text-sm font-medium text-gray-900 bg-white border border-gray-200 rounded-lg  dark:border-gray-600 dark:text-black">
                <li v-for="(data, index) in listaUltimasMillas "
                    class="w-full border-b border-gray-200 rounded-t-lg dark:border-gray-600">
                    <div class="flex items-center ps-3">
                        <input id="vue-checkbox" v-model="data.checked" @change="showRuta(data)" type="checkbox" value=""
                            class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                        <label for="vue-checkbox"
                            class="w-full py-3 ms-2 text-sm font-medium text-gray-900 dark:text-gray-900"> {{ data.nombre }}
                        </label>
                        <div class="grid p-1">
                            <div class="text-xs font-normal   dark:text-gray-900"> {{ data.distancia }} </div>
                            <div class="text-xs font-normal text-rigth text-gray-500 dark:text-gray-900"> {{
                                data.name }} </div>
                        </div>
                    </div>
                </li>
            </ul>

            <!-- aqui empieza el dropdown de las espciaifcion de la cualidades de las que no quiero  -->

        </div>
     

    </div>
</template>
  
<script>
import { GoogleMap, Marker, InfoWindow, Polyline, CustomMarker, MarkerCluster } from "vue3-google-map";
import photo1 from '@/assets/img/imgMaps/poste.svg'
import { useTaskStore } from '../../stores/taskStore';
import MyNameClass from '../../stores/coordenadas';
import _ from 'lodash';

export default {
    components: { GoogleMap, Marker, Polyline, InfoWindow, CustomMarker, MarkerCluster },
    data() {
        return {
            listaUltimasMillas: [
                { id: 1, checked: false, name: 'PE.ZTCNC.0001', nombre: 'Milla Alestra ', tramo: 'ALESTRA - HTGCNC', distancia: '1.65 KM' },
                { id: 2, checked: false, name: 'PE.ZTCNC.0002', nombre: 'SCT CNC ', tramo: 'ALESTRA - HTGCNC', distancia: '1.1 KM' },
                { id: 3, checked: false, name: 'PE.ZTCNC.0003', nombre: 'SCT PJU  ', tramo: 'ALESTRA - HTGCNC', distancia: '3.8 KM' },
                { id: 4, checked: false, name: 'PE.ZTCNC.0004', nombre: 'ZDD CNC  ', tramo: 'ALESTRA - HTGCNC', distancia: '1.3 KM' },
                { id: 5, checked: false, name: 'PE.ZTCNC.0005', nombre: ' ALESTRA CNC ', tramo: 'ALESTRA - HTGCNC', distancia: ' 2 KM' },
                { id: 6, checked: false, name: 'PE.ZTCNC.0006', nombre: ' PROFECO CNC ', tramo: 'ALESTRA - HTGCNC', distancia: '1 KM' },
                { id: 7, checked: false, name: 'PE.ZTCNC.0007', nombre: ' SE KUKULKAN ', tramo: 'ALESTRA - HTGCNC', distancia: '1.9 KM' },
                { id: 8, checked: false, name: 'PE.ZTCNC.0008', nombre: ' COPPEL', tramo: 'ALESTRA - HTGCNC', distancia: '2.89 KM' },
                { id: 9, checked: false, name: 'PE.ZTCNC.0009', nombre: ' ZDD R96', tramo: 'ALESTRA - HTGCNC', distancia: '5.9  KM' },
                { id: 11, checked: false, name: 'PE.ZTCNC.0011', nombre: ' SCJ CNC', tramo: 'ALESTRA - HTGCNC', distancia: ' 1 KM' },
                { id: 29, checked: false, name: 'PE.ZTCNC.0029', nombre: 'HTGCNC - SE CNC ', tramo: 'ALESTRA - HTGCNC', distancia: '4 KM' },
                { id: 30, checked: false, name: 'PE.ZTCNC.0030', nombre: 'SE CNC  - AGE PTE    ', tramo: 'ALESTRA - HTGCNC', distancia: '11.86 KM' },
                { id: 36, checked: false, name: 'PE.ZTCNC.0036', nombre: 'PJF - SE KUK ', tramo: 'ALESTRA - HTGCNC', distancia: '2.3 KM' },
                { id: 37, checked: false, name: 'PE.ZTCNC.0037', nombre: 'ZDD R96 - PJF', tramo: 'ALESTRA - HTGCNC', distancia: '2.39 KM' },
                { id: 47, checked: false, name: 'PE.ZTCNC.0047', nombre: 'ALESTRA - SE CNC', tramo: 'ALESTRA - HTGCNC', distancia: '0.92 KM' },
                { id: 61, checked: false, name: 'PE.ZTCNC.0061', nombre: 'ZDD R96 - AGE PTE ', tramo: 'ALESTRA - HTGCNC', distancia: '5.23 KM' },
                { id: 67, checked: false, name: 'PE.ZTCNC.0067', nombre: 'SCT CNC - ZDD CNC', tramo: 'ALESTRA - HTGCNC', distancia: '1.5 KM' },
                { id: 68, checked: false, name: 'PE.ZTCNC.0068', nombre: 'COPPEL - SE CNC', tramo: 'ALESTRA - HTGCNC', distancia: '1.89 KM' }
            ],
            taskstore: useTaskStore(),
            currentZoom: 12,
            polilines: [],
            center: { lng: -86.82509444, lat: 21.15626667 },
            subestaciones: useTaskStore().ultimaMillaAlestra,
            polis: [],
            restriction: {
                latLngBounds: {
                    north: 21.2376,
                    south: 21.0096,
                    east: -86.72,
                    west: -87,
                }
            },

            estilosMapa: [
                { "width": (window.innerWidth <= 768) ? "100%" : "100%" },
                { "height": (window.innerHeight - 180) + 'px' },
                {
                    "featureType": "poi.business",
                    "stylers": [{ "visibility": "off" }],
                },
                {
                    featureType: "transit",
                    elementType: "labels.icon",
                    stylers: [{ visibility: "off" }],
                }
            ]
        }
    },
    methods: {
        showRuta(data) {
            //this.polis.map(() => toRaw().setMap(null))

            if (data.checked) {
                //significa que hay que agregarlo al poliline, si es falso hay que quitarlo 
                const nombreFull = new MyNameClass('leonel', 'bermonm')
                const name = eval('nombreFull.ultimaMilla' + data.id + '()')
                console.log(name.path)


                this.polis.push({
                    id: name.id,
                    path: name.path,
                    geodesic: true,
                    strokeColor: name.strokeColor,
                    strokeOpacity: 1,
                    strokeWeight: 4
                })

                const tempLat = name.path[0].lat
                const tempLng = name.path[0].lng
                this.center = { lat: tempLat, lng: tempLng }
                this.currentZoom = 16
            } else {
                //debemos remover tanto la ruta como los postes del mapa 
                _.remove(this.polis, function (currentObject) {
                    return currentObject.id === data.id;
                });

            }

        },
        VerEquipo(idEquipo) {
            if (idEquipo > 0) {
                console.log('se presiona el boton');
                window.location.href = "http://192.168.1.78:5173/rack/" + idEquipo;
            } else {
                console.log('no hay idEquipo');
            }

        }
    },
    computed: {
        icon() {
            return {
                url: photo1,
                scaledSize: { width: 27, height: 39, color: "#9d03fc" }
            };
        }
    }
}


</script>
