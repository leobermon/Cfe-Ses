<template>
    <p class="mb-3 text-center text-gray-500 ">
    <h2 class="text-4xl font-bold">ENLACES OTN </h2>
    </p>

    <div class="place-content-center justify-center ">

        <center>
            <GoogleMap api-key="AIzaSyDcSa_dd4vPlcEFJZLzsLt-f75X79aSzM0" class="place-content-center justify-center"
            :style="estilosMapa" :center="center" :zoom="10" :min-zoom="9" :max-zoom="16" :restriction="restriction"
            :styles="estilosMapa" :streetViewControl="false" :gestureHandling="greedy">

            <Polyline :options="TinNiz" />
            <Polyline :options="Niz93040Rmy" />
            <Polyline :options="Pcn73790Chy" />

            <template v-for="a in subestaciones">

                <Marker :options="{ position: a, icon: icon }">

                    <InfoWindow>
                        <div id="content" class="place-content-center bg-slate-200" style="cursor: pointer;">
                            <h2 id="firstHeading" class="text-xl font-bold text-center"> {{ a.nombre }}</h2>
                            <div id="bodyContent">
                                <p class="place-content-center">
                                    <img src="../../assets/img/imgMaps/OTN.svg" alt="" @click="test(a.idEquipo)"
                                        style="cursos:pointer">
                                </p>
                            </div>
                        </div>

                        <br>
                    
                    </InfoWindow>
                </Marker>

                <CustomMarker :options="{ position: a, anchorPoint: 'TOP_CENTER' }"
                    class="bg-gray-100 rounded-lg p-0.5 border-double border-2 border-indigo-600">
                    <div style="text-align: center">
                        <div style="font-size: 1.125rem" class="font-bold">S.E. {{ a.abrev }}</div>
                    </div>
                </CustomMarker>
            </template>

            <CustomMarker :options="{ position: { lat: 20.981410, lng: -87.171071 }, anchorPoint: 'TOP_CENTER' }">
                <div style="text-align: center">
                    <div style="color:#e625d2; font-size: 1rem; transform: rotate(330deg);" class="font-bold">TIN-73480-NIZ
                    </div>
                </div>
            </CustomMarker>

            <CustomMarker :options="{ position: { lat: 21.031101, lng: -86.88425 }, anchorPoint: 'BOTTOM_CENTER' }">
                <div style="text-align: center">

                    <div style="color:#584dff; font-size: 1rem; transform: rotate(0deg);" class="font-bold">PTP-73780-NIZ
                    </div>
                </div>
            </CustomMarker>

            <CustomMarker :options="{ position: { lat: 20.989408, lng: -86.877752 }, anchorPoint: 'BOTTOM_CENTER' }">
                <div style="text-align: center">

                    <div style="color:#584dff; font-size: 1rem; transform: rotate(0deg);" class="font-bold">PTP-73B30-MPA
                    </div>
                </div>
            </CustomMarker>

            <CustomMarker :options="{ position: { lat: 20.501830, lng: -87.216771 }, anchorPoint: 'TOP_CENTER' }">
                <div style="text-align: center">

                    <div style="color:#fa6125; font-size: 1rem; transform: rotate(320deg);" class="font-bold">PCN-73790-CHY
                    </div>
                </div>
            </CustomMarker>

        </GoogleMap>
        </center>

    </div>
</template>
      
<script>
import { GoogleMap, Marker, InfoWindow, Polyline, CustomMarker } from "vue3-google-map";
import photo1 from '@/assets/img/imgMaps/caseta.svg'
import MyNameClass from "../../stores/coordenadas.js";
import { useRouter } from 'vue-router';
  


export default {
    components: { GoogleMap, Marker, Polyline, InfoWindow, CustomMarker },
    data() {
        return {
            router: useRouter(),
            pruebaTest: new MyNameClass('leonel', 'bermon'),
            center: { lat: 20.8966297, lng: -87.489809 },
            subestaciones: [
                { lat: 20.897165, lng: -87.489619, abrev: 'TIN', idEquipo: 17, nombre: 'TINTAL' }, //tintal
                { lat: 21.068863, lng: -86.846417, abrev: 'NIZ', idEquipo: 153, nombre: 'NIZUC' }, //niz
                { lat: 20.994938, lng: -86.887671, abrev: 'PTP', idEquipo: 157, nombre: 'PETEMPICH' }, //ptp
                { lat: 20.984939, lng: -86.882867, abrev: 'MPA', idEquipo: 155, nombre: 'MOON PALACE' }, //mpl
                { lat: 20.630688, lng: -87.082711, abrev: 'PCN', idEquipo: 154, nombre: 'PLAYA DEL CARMEN' }, //pcn
                { lat: 20.355993, lng: -87.375020, abrev: 'CHY', idEquipo: 156, nombre: 'CHEMUYIL' } //CHY
            ],
            TinNiz: {
                path: [
                    { lat: 20.897165, lng: -87.489619 },
                    { lat: 20.897230, lng: -87.489517 },
                    { lat: 20.900571, lng: -87.469564 },
                    { lat: 20.884130, lng: -87.468321 },
                    { lat: 20.976017, lng: -87.213007 },
                    { lat: 21.088324, lng: -86.995758 },
                    { lat: 21.068024, lng: -86.848244 },
                    { lat: 21.066734, lng: -86.847080 }

                ],
                geodesic: true,
                strokeColor: "#e625d2",
                strokeOpacity: 1,
                strokeWeight: 4
            },
            Niz93040Rmy: {
                path: [
                    { lat: 21.066734, lng: -86.847080 },
                    { lat: 21.067730, lng: -86.846853 },
                    { lat: 21.067856, lng: -86.850663 },
                    { lat: 21.074468, lng: -86.908206 },
                    { lat: 21.058761, lng: -86.919566 },
                    { lat: 21.055142, lng: -86.919088 },
                    { lat: 21.042716, lng: -86.904153 },
                    { lat: 20.995394, lng: -86.887238 },
                    { lat: 20.984925, lng: -86.883494 },
                ],
                geodesic: true,
                strokeColor: "#584dff",
                strokeOpacity: 1,
                strokeWeight: 4
            },
            Pcn73790Chy: {
                path: [
                    { lat: 20.630178, lng: -87.083592 },
                    { lat: 20.637031, lng: -87.099225 },
                    { lat: 20.634830, lng: -87.114502 },
                    { lat: 20.589503, lng: -87.132998 },
                    { lat: 20.557425, lng: -87.174922 },
                    { lat: 20.527319, lng: -87.198402 },
                    { lat: 20.502868, lng: -87.237435 },
                    { lat: 20.475334, lng: -87.266095 },
                    { lat: 20.443541, lng: -87.292008 },
                    { lat: 20.427045, lng: -87.303727 },
                    { lat: 20.416707, lng: -87.322105 },
                    { lat: 20.346955, lng: -87.358031 },
                    { lat: 20.355293, lng: -87.374907 }
                ],
                geodesic: true,
                strokeColor: "#fa6125",
                strokeOpacity: 1,
                strokeWeight: 4
            },
            Pcn73790Tum: {
                path: [
                    { lat: 20.630178, lng: -87.083592 },
                    { lat: 20.637031, lng: -87.099225 },
                    { lat: 20.634830, lng: -87.114502 },
                    { lat: 20.589503, lng: -87.132998 },
                    { lat: 20.557425, lng: -87.174922 },
                    { lat: 20.527319, lng: -87.198402 },
                    { lat: 20.502868, lng: -87.237435 },
                    { lat: 20.475334, lng: -87.266095 },
                    { lat: 20.443541, lng: -87.292008 },
                    { lat: 20.427045, lng: -87.303727 },
                    { lat: 20.416707, lng: -87.322105 },
                    { lat: 20.331476, lng: -87.365959 },
                    { lat: 20.322947, lng: -87.380040 },
                    { lat: 20.301421, lng: -87.378996 },
                    { lat: 20.255476, lng: -87.408625 },
                    { lat: 20.256713, lng: -87.467683 },
                    { lat: 20.260286, lng: -87.471059 },
                    { lat: 20.259582, lng: -87.471873 },
                ],
                geodesic: true,
                strokeColor: "#fa6125",
                strokeOpacity: 1,
                strokeWeight: 3
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
                { "width": (window.innerWidth <= 768) ? "100%" : "80%" },
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
        test(idEquipo) {
            if (idEquipo > 0) {
                console.log('se presiona el boton');
                this.router.push('/equipo/' + idEquipo )

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
    
    