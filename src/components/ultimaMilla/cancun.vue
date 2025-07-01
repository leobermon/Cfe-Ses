<template>
    <div class="grid-cols-12 grid gap-x-2 gap-12 p-4 ">

 
        <div class="sm:col-span-9 col-span-12 ">

            <GoogleMap api-key="AIzaSyDcSa_dd4vPlcEFJZLzsLt-f75X79aSzM0" :style="estilosMapa" :center="center"
                :zoom="currentZoom" :min-zoom="4" :max-zoom="20" :restriction="restriction" :styles="estilosMapa">

                <!-- <Polyline :options="poly1" />
                <CustomMarker :options="{ position: { lat: 20.918528, lng: -87.566060 }, anchorPoint: 'BOTTOM_CENTER' }">
                    <div style="text-align: center">
                        <div style="color:#bf42f5; font-size: 1rem; transform: rotate(340deg);" class="">FRONTERA
                            VAD-XXXXX-KHN</div>
                    </div>
                </CustomMarker> -->

                <!-- <Polyline :options="poly2" />
                <CustomMarker :options="{ position: { lat: 20.751818, lng: -87.576539 }, anchorPoint: 'TOP_CENTER' }">
                    <div style="text-align: center">
                        <div style="color:#bf42f5; font-size: 1rem; transform: rotate(355deg);" class="">FRONTERA
                            VAD-XXXXX-KHN</div>
                    </div>
                </CustomMarker> -->

                <!-- <Polyline :options="poly3" /> -->
                <!-- <Polyline :options="poly4" /> -->
                <!-- <Polyline :options="poly5" /> -->
                <!-- <Polyline :options="poly6" /> -->
                <!-- <Polyline :options="poly7" /> -->
                <Polyline :options="poly8" />

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
                    {{ data }}
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
                { lat: 21.174155, lng: -86.847711, show: true, abrev: 'CCD', nombre: 'CCD' },
                { lat: 21.193853, lng: -86.876067, show: true, abrev: 'KEK', nombre: 'KANEK' },
                { lat: 21.173510, lng: -86.848039, show: true, abrev: 'ZOT', nombre: 'ZONA DE OPERACION TRANSMISION' },
                {id:1, lat: 21.140815, lng: -86.917530, show: true, abrev: 'S.E. KHN', nombre: 'KOHUNLICH' },
                { lat: 21.186525, lng: -86.849396, show: true, abrev: 'S.E. BLM', nombre: 'BALAM' },
                { lat: 21.158897, lng: -86.819335, show: true, abrev: 'HTGCNC', nombre: 'HOTEL GRANDE CANCUN' },
                { lat: 21.066734, lng: -86.847080, show: true, abrev: 'S.E. NIZ', nombre: 'NIZUC' },
                { lat: 21.066993, lng: -86.846210, show: true, abrev: 'CDCNIZ', nombre: 'CONFIABILIDAD NIZUC' },
                { lat: 20.832738, lng: -86.930132, show: true, abrev: 'S.E. RMY', nombre: 'RIVIERA MAYA' },
                { lat: 20.630698, lng: -87.082716, show: true, abrev: 'S.E. PCN', nombre: 'PLAYA DEL CARMEN' },
                { lat: 20.630607, lng: -87.081784, show: true, abrev: 'HTMPCN', nombre: 'HOTEL MEDIANO PLAYA ' },
                { lat: 20.666698, lng: -87.069342, show: true, abrev: 'ZDDRIV', nombre: 'ZONA DE DISTRIBUCION RIVIERA MAYA ' },
                { lat: 20.504474, lng: -86.955833, show: true, abrev: 'HTMCOZ', nombre: 'COZUMEL ' },
                { lat: 20.212841, lng: -87.460363, show: true, abrev: 'AGTUM', nombre: 'AGENCIA TULUM ' },
                { lat: 20.258916, lng: -87.471155, show: true, abrev: 'S.E. TUM', nombre: 'TULUM ' },
                {id:1, lat: 20.692642, lng: -88.194891, show: true, abrev: 'S.E. VAD', nombre: 'VALLADOLID' },
                { lat: 21.134994, lng: -86.831353, show: true, abrev: 'CTGCNC', nombre: 'CENTRAL TURBOGAS CANCUN' },
                { lat: 21.068882, lng: -86.846557, show: true, abrev: 'CTGNIZ', nombre: 'CENTRAL TURBO GAS NIZUC' },
            ],
          
            taskstore: useTaskStore(),
            currentZoom: 2,
            polilines: [],
            center: { lng: -86.82509444, lat: 21.15626667 },
            subestaciones: useTaskStore().ultimaMillaAlestra,
            polis: [],
            restriction: {
                latLngBounds: {
                    north: 21.645733,
                    south: 19.940023,
                    east: -86.119121,
                    west: -88.824456,
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
                    elementType: "labels.icon",
                    stylers: [{ visibility: "off" }],
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
                const name = eval('nombreFull.poly' + data.id + '()')
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
