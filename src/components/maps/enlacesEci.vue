<template>
    <p class="mb-3 text-center text-gray-500 ">
    <h2 class="text-4xl font-bold ">ENLACES ECI </h2>
    </p>



    <div class="grid-cols-1 grid sm:grid-cols-6 gap-4">

        <div class="col-span-1 ..."> </div>
        <div class=" row-span-3 col-span-3">

            <GoogleMap api-key="AIzaSyDcSa_dd4vPlcEFJZLzsLt-f75X79aSzM0" style="width: 99%; height: 800px"
                :style="estilosMapa" :center="center" :zoom="currentZoom" :min-zoom="9" :max-zoom="18"
                :restriction="restriction" :styles="estilosMapa" :fullscreenControl="false" :gestureHandling="greedy">

                <Polyline :options="poly1" />
                <CustomMarker :options="{ position: { lat: 20.918528, lng: -87.566060 }, anchorPoint: 'BOTTOM_CENTER' }">
                    <div style="text-align: center">
                        <div style="color:#bf42f5; font-size: 1rem; transform: rotate(340deg);" class="">FRONTERA
                            VAD-XXXXX-KHN</div>
                    </div>
                </CustomMarker>

                <Polyline :options="poly2" />
                <CustomMarker :options="{ position: { lat: 20.751818, lng: -87.576539 }, anchorPoint: 'TOP_CENTER' }">
                    <div style="text-align: center">
                        <div style="color:#bf42f5; font-size: 1rem; transform: rotate(355deg);" class="">FRONTERA
                            VAD-XXXXX-KHN</div>
                    </div>
                </CustomMarker>

                <Polyline :options="poly3" />
                <Polyline :options="poly4" />
                <Polyline :options="poly5" />
                <Polyline :options="poly6" />
                <Polyline :options="poly7" />
                <Polyline :options="poly8" />

                <template v-for="(a, index) in subestaciones">
                    <Marker :options="{ position: a, icon: icon }" v-if="a.show" :key="index">
                        <InfoWindow>
                            <div id="content" class="place-content-center">
                                <h2 id="firstHeading" class="firstHeading">SUBESTACION {{ a.nombre }}</h2>
                                <div id="bodyContent">
                                    <p class="place-content-center">
                                        <img src="../../assets/img/imgMaps/ECI.svg" alt="" @click="test(a.idEquipo)"
                                            style="cursos:pointer">
                                    </p>
                                </div>
                            </div>
                        </InfoWindow>
                    </Marker>
                    <CustomMarker :options="{ position: a, anchorPoint: 'TOP_CENTER' }" v-if="a.show" :key="index"
                        class="bg-gray-100 rounded-lg p-0.5 border-double border-2 border-indigo-600">
                        <div style="text-align: center">
                            <div style="font-size: 1.125rem" class="font-bold"> {{ a.abrev }}</div>
                        </div>
                    </CustomMarker>
                </template>

            </GoogleMap>

        </div>
        <!-- MENU DE OPCIONES PARA CHECAR -->
        <div class=" col-span-1 ml-2 ">




            <!-- Dropdown menu -->



            <center class="hidden md:block">

                <div class="">

                   

                    <h3 class="mb-4 font-semibold text-gray-900 dark:text-white">Opciones para ver las subestaciones</h3>
                    <ul class="items-center w-full text-sm font-medium text-gray-900 bg-white border border-gray-200 rounded-lg sm:flex dark:bg-gray-700 dark:border-gray-600 dark:text-white">
                        <li class="w-full border-b border-gray-200 sm:border-b-0 sm:border-r dark:border-gray-600">
                            <div class="flex items-center pl-3">
                                <input id="horizontal-list-radio-license" @click="updateShowStatus(true)" type="radio" value="" name="list-radio" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                <label for="horizontal-list-radio-license" class="w-full py-3 ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Ver todo </label>
                            </div>
                        </li>
                        <li class="w-full border-b border-gray-200 sm:border-b-0 sm:border-r dark:border-gray-600">
                            <div class="flex items-center pl-3">
                                <input id="horizontal-list-radio-id" @click="updateShowStatus(false)" type="radio" value="" name="list-radio" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                <label for="horizontal-list-radio-id" class="w-full py-3 ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Ocultar Todo</label>
                            </div>
                        </li>
                    
                    </ul>

            
                </div>
                <br>
                <div id="dropdownSearch" class="z-10  bg-white rounded-lg shadow dark:bg-gray-700">

                    <ul :style="heightWin" class=" px-3 pb-3 overflow-y-auto text-sm text-gray-700 dark:text-gray-200"
                        aria-labelledby="dropdownSearchButton">
                        <li v-for="(data, index) in subestaciones ">
                            <div class="flex p-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600 text-left">
                                <input :id="index" type="checkbox" :checked="data.show" value=""
                                    @click="changeStatus(index)"
                                    class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                <label :for="index"
                                    class="w-full ml-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300">{{
                                        data.abrev }}</label>

                                <button type="button" @click="focusSubestacion(index)"
                                    class="px-1 py-1 text-xs font-medium text-center inline-flex items-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                    Ver
                                </button>


                            </div>
                        </li>

                    </ul>

                </div>

                <!-- Dropdown menu
                <div id="dropdownSearch" class="  bg-white rounded-lg shadow  dark:bg-gray-700">

                    <ul class="px-3 pb-3 overflow-y-auto text-sm text-gray-700 dark:text-gray-200 overflow-auto "
                        aria-labelledby="dropdownSearchButton">
                        <li v-for="(data, index) in subestaciones ">
                            <div class="flex items-center p-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600">
                                <input :id="index" type="checkbox" :checked="data.show" value=""
                                    @click="changeStatus(index)"
                                    class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
                                <label :for="index"
                                    class="w-full ml-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300">{{
                                        data.nombre }}</label>

                                <button type="button" @click="focusSubestacion(index)"
                                    class="px-1 py-1 text-xs font-medium text-center inline-flex items-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                    Ver
                                </button>


                            </div>
                        </li>

                    </ul>

                </div> -->

            </center>
        </div>

        <div class="col-span-1 ..."> </div>

    </div>
</template>
      
<script>
import { GoogleMap, Marker, InfoWindow, Polyline, CustomMarker } from "vue3-google-map";
import photo1 from '@/assets/img/imgMaps/caseta.svg'

export default {
    components: { GoogleMap, Marker, Polyline, InfoWindow, CustomMarker },
    data() {
        return {
            heightWin: { 'height': (window.innerHeight - 400) + 'px' },
            currentZoom: 10,
            showValue: true,
            center: { lat: 20.8966297, lng: -87.189809 },
            subestaciones: [
                { lat: 21.174155, lng: -86.847711, show: true, abrev: 'CCD', nombre: 'CCD' },
                { lat: 21.193853, lng: -86.876067, show: true, abrev: 'KEK', nombre: 'KANEK' },
                { lat: 21.173510, lng: -86.848039, show: true, abrev: 'ZOT', nombre: 'ZONA DE OPERACION TRANSMISION' },
                { lat: 21.140815, lng: -86.917530, show: true, abrev: 'S.E. KHN', nombre: 'KOHUNLICH' },
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
                { lat: 20.692642, lng: -88.194891, show: true, abrev: 'S.E. VAD', nombre: 'VALLADOLID' },
                { lat: 21.134994, lng: -86.831353, show: true, abrev: 'CTGCNC', nombre: 'CENTRAL TURBOGAS CANCUN' },
                { lat: 21.068882, lng: -86.846557, show: true, abrev: 'CTGNIZ', nombre: 'CENTRAL TURBO GAS NIZUC' },
            ],
            poly1: {
                path: [
                    { lat: 20.692642, lng: -88.194891 },
                    { lat: 21.140815, lng: -86.917530 }

                ],
                geodesic: true,
                strokeColor: "#bf42f5",
                strokeOpacity: 1.0,
                strokeWeight: 3,
            },
            poly2: {
                path: [
                    { lat: 20.692642, lng: -88.194891 },
                    { lat: 20.832738, lng: -86.930132 }
                ],
                geodesic: true,
                strokeColor: "#bf42f5",
                strokeOpacity: 1.0,
                strokeWeight: 3,
            },
            poly3: {
                path: [
                    { lat: 21.140815, lng: -86.917530 },
                    { lat: 21.158897, lng: -86.819335 },
                    { lat: 20.832738, lng: -86.930132 },
                    { lat: 20.630607, lng: -87.081784 },
                    { lat: 20.630698, lng: -87.082716 },
                    { lat: 20.258916, lng: -87.471155 },
                    { lat: 20.630607, lng: -87.081784 },
                    { lat: 21.066734, lng: -86.847080 },
                    { lat: 21.158897, lng: -86.819335 },
                    { lat: 21.173510, lng: -86.848039 },
                    { lat: 21.066734, lng: -86.847080 },
                    { lat: 21.066993, lng: -86.846210 },
                    { lat: 21.186525, lng: -86.849396 },
                    { lat: 21.158897, lng: -86.819335 },
                    { lat: 21.134994, lng: -86.831353 },
                    { lat: 21.066993, lng: -86.846210 }

                ],
                geodesic: true,
                strokeColor: "#FF0000",
                strokeOpacity: 1.0,
                strokeWeight: 3,
            },
            poly4: {
                path: [
                    { lat: 20.212841, lng: -87.460363 },
                    { lat: 20.258916, lng: -87.471155 }
                ],
                geodesic: true,
                strokeColor: "#FF0000",
                strokeOpacity: 1.0,
                strokeWeight: 3,
            },
            poly5: {
                path: [
                    { lat: 20.504474, lng: -86.955833 },
                    { lat: 20.630607, lng: -87.081784 },
                    { lat: 20.666698, lng: -87.069342 }
                ],
                geodesic: true,
                strokeColor: "#FF0000",
                strokeOpacity: 1.0,
                strokeWeight: 3,
            },
            poly6: {
                path: [
                    { lat: 21.068882, lng: -86.846557 },
                    { lat: 21.066734, lng: -86.847080 }
                ],
                geodesic: true,
                strokeColor: "#FF0000",
                strokeOpacity: 1.0,
                strokeWeight: 3,
            },
            poly7: {
                path: [
                    { lat: 21.193853, lng: -86.876067 },
                    { lat: 21.186525, lng: -86.849396 }
                ],
                geodesic: true,
                strokeColor: "#FF0000",
                strokeOpacity: 1.0,
                strokeWeight: 3,
            },
            poly8: {
                path: [
                    { lat: 21.174155, lng: -86.847711 },
                    { lat: 21.173510, lng: -86.848039 }
                ],
                geodesic: true,
                strokeColor: "#FF0000",
                strokeOpacity: 1.0,
                strokeWeight: 3,
            },
            restriction: {
                latLngBounds: {
                    north: 22,
                    south: 20,
                    east: -84,
                    west: -90,
                }
            },

            estilosMapa: [
                { "width": "100%" },
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
        focus() {

            this.currentZoom = 18
        },
        updateShowStatus(opc) {
            console.log('se cambia el valor de los shows a ' + opc);

            for (var i = 0; i < this.subestaciones.length; i++) {
                this.subestaciones[i].show = opc;
            }
        },
        changeStatus(index) {
            console.log('se hace click en la funcion con el dato' + index);
            console.log(this.subestaciones[index].show);

            this.subestaciones[index].show = !this.subestaciones[index].show



        },
        focusSubestacion(index) {
            if (this.subestaciones[index].show) {

                const tempLat = this.subestaciones[index].lat
                const tempLng = this.subestaciones[index].lng
                this.subestaciones[index].show = true

                this.center = { lat: tempLat, lng: tempLng }
                this.focus()
            }
        },
        test(idEquipo) {
            if (idEquipo > 0) {
                console.log('se presiona el boton');
                window.location.href = "http://192.168.1.78:5173/equipo/17";
            } else {
                console.log('no hay idEquipo');
            }

        }
    },
    computed: {
        icon() {
            return {
                url: photo1,
                scaledSize: { width: 27, height: 39 }
            };
        },
    }
}


</script>
    
    