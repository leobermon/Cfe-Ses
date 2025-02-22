<template>
    <p class="mb-3 text-center text-gray-500 ">
    <h2 class="text-4xl font-bold "> ULTIMA MILLA S.E. TULUM --> S.E. PLAYA DEL CARMEN </h2>
    </p>

    <center>

        <GoogleMap api-key="AIzaSyDcSa_dd4vPlcEFJZLzsLt-f75X79aSzM0" :style="estilosMapa" :center="center" :zoom="11"
            :min-zoom="9" :max-zoom="20" :restriction="restriction" :styles="estilosMapa">

            <Polyline :options="VadBlm" />
            <Polyline :options="torres2" />
            <Polyline :options="torres3" />

            <MarkerCluster>

            <template v-for="a in subestaciones">

                <Marker :options="{ position: a, icon: icon }">

                </Marker>

                <CustomMarker :options="{ position: a, anchorPoint: 'TOP_CENTER' }"
                    class="bg-gray-50 rounded-lg p-0.5  border-2 border-indigo-600">
                    <div style="text-align: center; ">
                        <div style="font-size: 1.125rem" class="font-bold"> {{ a.torre }} </div>
                    </div>
                </CustomMarker>

            </template>

        </MarkerCluster>


            <!-- SUBESTACION TULUM  -->
            <template>
                <Marker style="color:#0b03fc;" :options="{ position: { lat: 20.259052, lng: -87.471312 }, icon: icon2 }"> </Marker>
                <CustomMarker
                    :options="{ position: { lat: 20.259052, lng: -87.471312 }, anchorPoint: 'TOP_CENTER', icon: icon2 }">
                    <div style="text-align: center">
                        <div style="color:#0b03fc; font-size: 1rem;"
                            class="font-bold bg-gray-50 rounded-lg p-0.5  border-2 border-indigo-600">S.E TULUM
                        </div>
                    </div>
                </CustomMarker>
            </template>

             <!-- SUBESTACION CHY  -->
             <template>
                <Marker style="color:#0b03fc;" :options="{ position: { lat: 20.355993, lng: -87.375020 }, icon: icon2 }"> </Marker>
                <CustomMarker
                    :options="{ position: { lat: 20.355993, lng: -87.375020 }, anchorPoint: 'TOP_CENTER', icon: icon2 }">
                    <div style="text-align: center">
                        <div style="color:#0b03fc; font-size: 1rem;"
                            class="font-bold bg-gray-50 rounded-lg p-0.5  border-2 border-indigo-600">S.E CHY
                        </div>
                    </div>
                </CustomMarker>
            </template>

             <!-- SUBESTACION AUC  -->
             <template>
                <Marker style="color:#0b03fc;" :options="{   position: { lat: 20.508611, lng: -87.228948 }, icon: icon2 }"> </Marker>
                <CustomMarker
                    :options="{ position: {  lat: 20.508611, lng: -87.228948 }, anchorPoint: 'TOP_CENTER', icon: icon2 }">
                    <div style="text-align: center">
                        <div style="color:#0b03fc; font-size: 1rem;"
                            class="font-bold bg-gray-50 rounded-lg p-0.5  border-2 border-indigo-600">S.E AUC
                        </div>
                    </div>
                </CustomMarker>
            </template>

             <!-- SUBESTACION AKD  -->
             <template>
                <Marker style="color:#0b03fc;" :options="{ position: { lat: 20.454425, lng: -87.284036 }, icon: icon2 }"> </Marker>
                <CustomMarker
                    :options="{ position: {lat: 20.454425, lng: -87.284036 }, anchorPoint: 'TOP_CENTER', icon: icon2 }">
                    <div style="text-align: center">
                        <div style="color:#0b03fc; font-size: 1rem;"
                            class="font-bold bg-gray-50 rounded-lg p-0.5  border-2 border-indigo-600">S.E AKD
                        </div>
                    </div>
                </CustomMarker>
            </template>


             <!-- SUBESTACION PCN  -->
             <template>
                <Marker style="color:#0b03fc;" :options="{ position: { lat: 20.630688, lng: -87.082711 }, icon: icon2 }"> </Marker>
                <CustomMarker
                    :options="{ position: { lat: 20.630688, lng: -87.082711 }, anchorPoint: 'TOP_CENTER', icon: icon2 }">
                    <div style="text-align: center">
                        <div style="color:#0b03fc; font-size: 1rem;"
                            class="font-bold bg-gray-50 rounded-lg p-0.5  border-2 border-indigo-600">S.E PCN
                        </div>
                    </div>
                </CustomMarker>
            </template>

        </GoogleMap>
    </center>
</template>
  
<script>
import { GoogleMap, Marker, InfoWindow, Polyline, CustomMarker,MarkerCluster } from "vue3-google-map";
import photo1 from '@/assets/img/imgMaps/torre.svg'
import photo2 from '@/assets/img/imgMaps/caseta.svg'

export default {
    components: { GoogleMap, Marker, Polyline, InfoWindow, CustomMarker,MarkerCluster },
    data() {
        return {
            center: { lat: 20.396167, lng: -87.307022},
            subestaciones: [


                { torre: 23.1, lng: -87.22994494, lat: 20.50760264 },
                { torre: 24, lng: -87.22908778, lat: 20.50809993 },
                { torre: 25, lng: -87.22641433, lat: 20.50972993 },
                { torre: 26, lng: -87.22372182, lat: 20.51148643 },
                { torre: 27, lng: -87.22097157, lat: 20.51314356 },
                { torre: 28, lng: -87.21826931, lat: 20.51487288 },
                { torre: 29, lng: -87.21547118, lat: 20.51667456 },
                { torre: 30, lng: -87.21269201, lat: 20.51835871 },
                { torre: 31, lng: -87.20987935, lat: 20.52015927 },
                { torre: 32, lng: -87.20747866, lat: 20.52164513 },
                { torre: 33, lng: -87.20535111, lat: 20.52299404 },
                { torre: 34, lng: -87.20306053, lat: 20.52440637 },
                { torre: 35, lng: -87.20085642, lat: 20.52595411 },
                { torre: 36, lng: -87.19841229, lat: 20.52736655 },
                { torre: 37, lng: -87.19655438, lat: 20.52967287 },
                { torre: 38, lng: -87.19446668, lat: 20.53236799 },
                { torre: 39, lng: -87.19229268, lat: 20.53514449 },
                { torre: 40, lng: -87.19033896, lat: 20.53769483 },
                { torre: 41, lng: -87.18833716, lat: 20.54020905 },
                { torre: 42, lng: -87.18642159, lat: 20.54268701 },
                { torre: 43, lng: -87.18442928, lat: 20.54521925 },
                { torre: 44, lng: -87.18251351, lat: 20.54763391 },
                { torre: 45, lng: -87.18046364, lat: 20.55027459 },
                { torre: 46, lng: -87.1784711, lat: 20.55277965 },
                { torre: 47, lng: -87.17652446, lat: 20.55536736 },
                { torre: 48, lng: -87.17486916, lat: 20.5574098 },
                { torre: 49, lng: -87.1723386, lat: 20.55940931 },
                { torre: 50, lng: -87.16971203, lat: 20.56140888 },
                { torre: 51, lng: -87.1670671, lat: 20.56342168 },
                { torre: 52, lng: -87.164382, lat: 20.56546218 },
                { torre: 53, lng: -87.16183191, lat: 20.56738927 },
                { torre: 54, lng: -87.15947356, lat: 20.56923482 },
                { torre: 55, lng: -87.15685626, lat: 20.57124322 },
                { torre: 56, lng: -87.15422927, lat: 20.57322448 },
                { torre: 57, lng: -87.1517365, lat: 20.5751604 },
                { torre: 58, lng: -87.14915731, lat: 20.57709636 },
                { torre: 59, lng: -87.14655887, lat: 20.5790323 },
                { torre: 60, lng: -87.14417145, lat: 20.58095898 },
                { torre: 61, lng: -87.14163044, lat: 20.58288577 },
                { torre: 62, lng: -87.14049893, lat: 20.58372704 },
                { torre: 63, lng: -87.13826468, lat: 20.58541859 },
                { torre: 64, lng: -87.13561806, lat: 20.58744476 },
                { torre: 65, lng: -87.13298097, lat: 20.58947992 },
                { torre: 66, lng: -87.13172648, lat: 20.59248989 },
                { torre: 67, lng: -87.1303257, lat: 20.59590899 },
                { torre: 68, lng: -87.12895745, lat: 20.59924031 },
                { torre: 69, lng: -87.12767558, lat: 20.60241451 },
                { torre: 70, lng: -87.12650713, lat: 20.60527076 },
                { torre: 71, lng: -87.12522367, lat: 20.60837106 },
                { torre: 72, lng: -87.12401694, lat: 20.61147129 },
                { torre: 73, lng: -87.12273341, lat: 20.61460772 },
                { torre: 74, lng: -87.1213254, lat: 20.61817794 },
                { torre: 75, lng: -87.11989803, lat: 20.62162167 },
                { torre: 76, lng: -87.11850887, lat: 20.62491174 },
                { torre: 77, lng: -87.11732099, lat: 20.62791251 },
                { torre: 78, lng: -87.11643004, lat: 20.63014502 },
                { torre: 79, lng: -87.11553905, lat: 20.63235944 },
                { torre: 80, lng: -87.11452345, lat: 20.63483599 },
                { torre: 81, lng: -87.1113562, lat: 20.63533504 },
                { torre: 82, lng: -87.1078146, lat: 20.63585234 },
                { torre: 83, lng: -87.10475289, lat: 20.63634217 },
                { torre: 84, lng: -87.10139361, lat: 20.63685019 },
                { torre: 85, lng: -87.09928204, lat: 20.63714961 },
                { torre: 86, lng: -87.0962463, lat: 20.63575124 },
                { torre: 87, lng: -87.09296604, lat: 20.63433462 },
                { torre: 88, lng: -87.0897349, lat: 20.63283769 },
                { torre: 89, lng: -87.08673519, lat: 20.63152785 },
                { torre: 90, lng: -87.08348108, lat: 20.63013847 },
                { torre: 3, lng: -87.46964542, lat: 20.25879872 },
                { torre: 4, lng: -87.46769538, lat: 20.25670754 },
                { torre: 5, lng: -87.46446021, lat: 20.25661014 },
                { torre: 6, lng: -87.46115512, lat: 20.25655317 },
                { torre: 7, lng: -87.45831772, lat: 20.25652242 },
                { torre: 8, lng: -87.45511409, lat: 20.25643393 },
                { torre: 9, lng: -87.45188583, lat: 20.25636043 },
                { torre: 10, lng: -87.44924932, lat: 20.25631862 },
                { torre: 11, lng: -87.44665937, lat: 20.25627668 },
                { torre: 12, lng: -87.44432592, lat: 20.25623505 },
                { torre: 13, lng: -87.44244404, lat: 20.25610439 },
                { torre: 14, lng: -87.43943737, lat: 20.2560758 },
                { torre: 15, lng: -87.43610525, lat: 20.25608412 },
                { torre: 16, lng: -87.43286851, lat: 20.2559566 },
                { torre: 17, lng: -87.42893182, lat: 20.25590853 },
                { torre: 18, lng: -87.42509891, lat: 20.25584567 },
                { torre: 19, lng: -87.42168421, lat: 20.25574891 },
                { torre: 20, lng: -87.41845925, lat: 20.25569213 },
                { torre: 21, lng: -87.41521113, lat: 20.25563785 },
                { torre: 22, lng: -87.41183088, lat: 20.25554642 },
                { torre: 23, lng: -87.4086421, lat: 20.25544544 },
                { torre: 24, lng: -87.40686846, lat: 20.25825984 },
                { torre: 25, lng: -87.40516144, lat: 20.26093852 },
                { torre: 26, lng: -87.40339702, lat: 20.2636625 },
                { torre: 27, lng: -87.40170893, lat: 20.26630496 },
                { torre: 28, lng: -87.39994216, lat: 20.26902534 },
                { torre: 29, lng: -87.39821817, lat: 20.27177986 },
                { torre: 30, lng: -87.39647232, lat: 20.27436818 },
                { torre: 31, lng: -87.3946407, lat: 20.27714644 },
                { torre: 32, lng: -87.39320061, lat: 20.27950814 },
                { torre: 33, lng: -87.39132119, lat: 20.2823678 },
                { torre: 34, lng: -87.38965182, lat: 20.28497153 },
                { torre: 35, lng: -87.38794434, lat: 20.28772476 },
                { torre: 36, lng: -87.38617919, lat: 20.29039435 },
                { torre: 37, lng: -87.38455768, lat: 20.29285254 },
                { torre: 38, lng: -87.38310672, lat: 20.29503669 },
                { torre: 39, lng: -87.38181836, lat: 20.29691904 },
                { torre: 40, lng: -87.38029189, lat: 20.29936215 },
                { torre: 41, lng: -87.37901933, lat: 20.30142005 },
                { torre: 42, lng: -87.37912177, lat: 20.30400353 },
                { torre: 43, lng: -87.37928575, lat: 20.30703609 },
                { torre: 44, lng: -87.37941802, lat: 20.31021655 },
                { torre: 45, lng: -87.37950167, lat: 20.31309892 },
                { torre: 46, lng: -87.3796507, lat: 20.3152944 },
                { torre: 47, lng: -87.37977435, lat: 20.317175 },
                { torre: 48, lng: -87.37989709, lat: 20.32012767 },
                { torre: 49, lng: -87.38003311, lat: 20.32296424 },
                { torre: 50, lng: -87.37760396, lat: 20.32447962 },
                { torre: 51, lng: -87.37516419, lat: 20.32593813 },
                { torre: 52, lng: -87.3726967, lat: 20.32738173 },
                { torre: 53, lng: -87.37074486, lat: 20.32857465 },
                { torre: 54, lng: -87.36828698, lat: 20.33011097 },
                { torre: 55, lng: -87.36594306, lat: 20.33143518 },
                { torre: 56, lng: -87.36457983, lat: 20.33428444 },
                { torre: 57, lng: -87.36307278, lat: 20.33710687 },
                { torre: 58, lng: -87.36169018, lat: 20.33991096 },
                { torre: 59, lng: -87.36012577, lat: 20.34283288 },
                { torre: 60, lng: -87.35863789, lat: 20.34572753 },
                { torre: 61, lng: -87.35748391, lat: 20.34802509 },
                { torre: 62, lng: -87.35605302, lat: 20.3507479 },
                { torre: 63, lng: -87.35462231, lat: 20.35357011 },
                { torre: 64, lng: -87.35313587, lat: 20.35648572 },
                { torre: 65, lng: -87.35162657, lat: 20.35920571 },
                { torre: 66, lng: -87.35042615, lat: 20.36180822 },
                { torre: 67, lng: -87.34895588, lat: 20.36460567 },
                { torre: 68, lng: -87.34734914, lat: 20.36780675 },
                { torre: 69, lng: -87.34589332, lat: 20.3705395 },
                { torre: 70, lng: -87.34442393, lat: 20.37337074 },
                { torre: 71, lng: -87.34304046, lat: 20.37607528 },
                { torre: 72, lng: -87.34165712, lat: 20.37886113 },
                { torre: 73, lng: -87.34025409, lat: 20.38143015 },
                { torre: 74, lng: -87.33886887, lat: 20.38424661 },
                { torre: 75, lng: -87.3373532, lat: 20.38709243 },
                { torre: 76, lng: -87.33595047, lat: 20.38986924 },
                { torre: 77, lng: -87.33452773, lat: 20.39265703 },
                { torre: 78, lng: -87.33315438, lat: 20.39538667 },
                { torre: 79, lng: -87.33178357, lat: 20.39801814 },
                { torre: 80, lng: -87.33049162, lat: 20.40059657 },
                { torre: 81, lng: -87.32913592, lat: 20.403066 },
                { torre: 82, lng: -87.32785687, lat: 20.40554432 },
                { torre: 83, lng: -87.32667148, lat: 20.40798337 },
                { torre: 84, lng: -87.32509825, lat: 20.41091697 },
                { torre: 85, lng: -87.32363768, lat: 20.41373896 },
                { torre: 86, lng: -87.3220912, lat: 20.41675991 },
                { torre: 87, lng: -87.31930504, lat: 20.41826504 },
                { torre: 88, lng: -87.31649019, lat: 20.41983343 },
                { torre: 89, lng: -87.31414071, lat: 20.42116739 },
                { torre: 90, lng: -87.31137277, lat: 20.4227096 },
                { torre: 91, lng: -87.30901031, lat: 20.42399903 },
                { torre: 92, lng: -87.30638888, lat: 20.42549005 },
                { torre: 93, lng: -87.30374775, lat: 20.42703491 },
                { torre: 94, lng: -87.3018402, lat: 20.42962587 },
                { torre: 95, lng: -87.30001144, lat: 20.43224805 },
                { torre: 96, lng: -87.29810583, lat: 20.43490202 },
                { torre: 97, lng: -87.29616493, lat: 20.437571 },
                { torre: 98, lng: -87.29437721, lat: 20.4401674 },
                { torre: 99, lng: -87.29250317, lat: 20.44277297 },
                { torre: 100, lng: -87.29065687, lat: 20.44544168 },
                { torre: 101, lng: -87.28856299, lat: 20.44789401 },
                { torre: 102, lng: -87.28654474, lat: 20.45039132 },
                { torre: 103, lng: -87.28447855, lat: 20.45291579 },
                { torre: 104, lng: -87.28374775, lat: 20.4537029 },
                { torre: 1, lng: -87.28256124, lat: 20.45526301 },
                { torre: 2, lng: -87.28044197, lat: 20.45781112 },
                { torre: 3, lng: -87.27845754, lat: 20.46024719 },
                { torre: 4, lng: -87.27648573, lat: 20.46260711 },
                { torre: 5, lng: -87.27458327, lat: 20.46497201 },
                { torre: 6, lng: -87.2724921, lat: 20.46751951 },
                { torre: 7, lng: -87.27064564, lat: 20.46979097 },
                { torre: 8, lng: -87.26895144, lat: 20.47182833 },
                { torre: 9, lng: -87.26747689, lat: 20.47362933 },
                { torre: 10, lng: -87.2661035, lat: 20.47529043 },
                { torre: 11, lng: -87.26399342, lat: 20.47735901 },
                { torre: 12, lng: -87.26161662, lat: 20.47964357 },
                { torre: 13, lng: -87.25927158, lat: 20.48187582 },
                { torre: 14, lng: -87.25690679, lat: 20.4841624 },
                { torre: 15, lng: -87.25455072, lat: 20.48641982 },
                { torre: 16, lng: -87.25219326, lat: 20.48862554 },
                { torre: 17, lng: -87.24969461, lat: 20.49108062 },
                { torre: 18, lng: -87.2470239, lat: 20.49365185 },
                { torre: 19, lng: -87.24460169, lat: 20.49593861 },
                { torre: 20, lng: -87.24220723, lat: 20.49825129 },
                { torre: 21, lng: -87.23981478, lat: 20.50058192 },
                { torre: 22, lng: -87.23743218, lat: 20.50290307 },
                { torre: 23, lng: -87.2346598, lat: 20.50460549 },
                { torre: 24, lng: -87.23199068, lat: 20.50629598 },
                { torre: 24.1, lng: -87.22994494, lat: 20.50760264 }

            ],
            torres2: {
                path: [
                    { torre: 3, lng: -87.46964542, lat: 20.25879872 },
                    { torre: 4, lng: -87.46769538, lat: 20.25670754 },
                    { torre: 5, lng: -87.46446021, lat: 20.25661014 },
                    { torre: 6, lng: -87.46115512, lat: 20.25655317 },
                    { torre: 7, lng: -87.45831772, lat: 20.25652242 },
                    { torre: 8, lng: -87.45511409, lat: 20.25643393 },
                    { torre: 9, lng: -87.45188583, lat: 20.25636043 },
                    { torre: 10, lng: -87.44924932, lat: 20.25631862 },
                    { torre: 11, lng: -87.44665937, lat: 20.25627668 },
                    { torre: 12, lng: -87.44432592, lat: 20.25623505 },
                    { torre: 13, lng: -87.44244404, lat: 20.25610439 },
                    { torre: 14, lng: -87.43943737, lat: 20.2560758 },
                    { torre: 15, lng: -87.43610525, lat: 20.25608412 },
                    { torre: 16, lng: -87.43286851, lat: 20.2559566 },
                    { torre: 17, lng: -87.42893182, lat: 20.25590853 },
                    { torre: 18, lng: -87.42509891, lat: 20.25584567 },
                    { torre: 19, lng: -87.42168421, lat: 20.25574891 },
                    { torre: 20, lng: -87.41845925, lat: 20.25569213 },
                    { torre: 21, lng: -87.41521113, lat: 20.25563785 },
                    { torre: 22, lng: -87.41183088, lat: 20.25554642 },
                    { torre: 23, lng: -87.4086421, lat: 20.25544544 },
                    { torre: 24, lng: -87.40686846, lat: 20.25825984 },
                    { torre: 25, lng: -87.40516144, lat: 20.26093852 },
                    { torre: 26, lng: -87.40339702, lat: 20.2636625 },
                    { torre: 27, lng: -87.40170893, lat: 20.26630496 },
                    { torre: 28, lng: -87.39994216, lat: 20.26902534 },
                    { torre: 29, lng: -87.39821817, lat: 20.27177986 },
                    { torre: 30, lng: -87.39647232, lat: 20.27436818 },
                    { torre: 31, lng: -87.3946407, lat: 20.27714644 },
                    { torre: 32, lng: -87.39320061, lat: 20.27950814 },
                    { torre: 33, lng: -87.39132119, lat: 20.2823678 },
                    { torre: 34, lng: -87.38965182, lat: 20.28497153 },
                    { torre: 35, lng: -87.38794434, lat: 20.28772476 },
                    { torre: 36, lng: -87.38617919, lat: 20.29039435 },
                    { torre: 37, lng: -87.38455768, lat: 20.29285254 },
                    { torre: 38, lng: -87.38310672, lat: 20.29503669 },
                    { torre: 39, lng: -87.38181836, lat: 20.29691904 },
                    { torre: 40, lng: -87.38029189, lat: 20.29936215 },
                    { torre: 41, lng: -87.37901933, lat: 20.30142005 },
                    { torre: 42, lng: -87.37912177, lat: 20.30400353 },
                    { torre: 43, lng: -87.37928575, lat: 20.30703609 },
                    { torre: 44, lng: -87.37941802, lat: 20.31021655 },
                    { torre: 45, lng: -87.37950167, lat: 20.31309892 },
                    { torre: 46, lng: -87.3796507, lat: 20.3152944 },
                    { torre: 47, lng: -87.37977435, lat: 20.317175 },
                    { torre: 48, lng: -87.37989709, lat: 20.32012767 },
                    { torre: 49, lng: -87.38003311, lat: 20.32296424 },
                    { torre: 50, lng: -87.37760396, lat: 20.32447962 },
                    { torre: 51, lng: -87.37516419, lat: 20.32593813 },
                    { torre: 52, lng: -87.3726967, lat: 20.32738173 },
                    { torre: 53, lng: -87.37074486, lat: 20.32857465 },
                    { torre: 54, lng: -87.36828698, lat: 20.33011097 },
                    { torre: 55, lng: -87.36594306, lat: 20.33143518 },
                    { torre: 56, lng: -87.36457983, lat: 20.33428444 },
                    { torre: 57, lng: -87.36307278, lat: 20.33710687 },
                    { torre: 58, lng: -87.36169018, lat: 20.33991096 },
                    { torre: 59, lng: -87.36012577, lat: 20.34283288 },
                    { torre: 60, lng: -87.35863789, lat: 20.34572753 },
                    { torre: 61, lng: -87.35748391, lat: 20.34802509 },
                    { torre: 62, lng: -87.35605302, lat: 20.3507479 },
                    { torre: 63, lng: -87.35462231, lat: 20.35357011 },
                    { torre: 64, lng: -87.35313587, lat: 20.35648572 },
                    { torre: 65, lng: -87.35162657, lat: 20.35920571 },
                    { torre: 66, lng: -87.35042615, lat: 20.36180822 },
                    { torre: 67, lng: -87.34895588, lat: 20.36460567 },
                    { torre: 68, lng: -87.34734914, lat: 20.36780675 },
                    { torre: 69, lng: -87.34589332, lat: 20.3705395 },
                    { torre: 70, lng: -87.34442393, lat: 20.37337074 },
                    { torre: 71, lng: -87.34304046, lat: 20.37607528 },
                    { torre: 72, lng: -87.34165712, lat: 20.37886113 },
                    { torre: 73, lng: -87.34025409, lat: 20.38143015 },
                    { torre: 74, lng: -87.33886887, lat: 20.38424661 },
                    { torre: 75, lng: -87.3373532, lat: 20.38709243 },
                    { torre: 76, lng: -87.33595047, lat: 20.38986924 },
                    { torre: 77, lng: -87.33452773, lat: 20.39265703 },
                    { torre: 78, lng: -87.33315438, lat: 20.39538667 },
                    { torre: 79, lng: -87.33178357, lat: 20.39801814 },
                    { torre: 80, lng: -87.33049162, lat: 20.40059657 },
                    { torre: 81, lng: -87.32913592, lat: 20.403066 },
                    { torre: 82, lng: -87.32785687, lat: 20.40554432 },
                    { torre: 83, lng: -87.32667148, lat: 20.40798337 },
                    { torre: 84, lng: -87.32509825, lat: 20.41091697 },
                    { torre: 85, lng: -87.32363768, lat: 20.41373896 },
                    { torre: 86, lng: -87.3220912, lat: 20.41675991 },
                    { torre: 87, lng: -87.31930504, lat: 20.41826504 },
                    { torre: 88, lng: -87.31649019, lat: 20.41983343 },
                    { torre: 89, lng: -87.31414071, lat: 20.42116739 },
                    { torre: 90, lng: -87.31137277, lat: 20.4227096 },
                    { torre: 91, lng: -87.30901031, lat: 20.42399903 },
                    { torre: 92, lng: -87.30638888, lat: 20.42549005 },
                    { torre: 93, lng: -87.30374775, lat: 20.42703491 },
                    { torre: 94, lng: -87.3018402, lat: 20.42962587 },
                    { torre: 95, lng: -87.30001144, lat: 20.43224805 },
                    { torre: 96, lng: -87.29810583, lat: 20.43490202 },
                    { torre: 97, lng: -87.29616493, lat: 20.437571 },
                    { torre: 98, lng: -87.29437721, lat: 20.4401674 },
                    { torre: 99, lng: -87.29250317, lat: 20.44277297 },
                    { torre: 100, lng: -87.29065687, lat: 20.44544168 },
                    { torre: 101, lng: -87.28856299, lat: 20.44789401 },
                    { torre: 102, lng: -87.28654474, lat: 20.45039132 },
                    { torre: 103, lng: -87.28447855, lat: 20.45291579 },
                    { torre: 104, lng: -87.28374775, lat: 20.4537029 },

                ],
                geodesic: true,
                strokeColor: "#ce03fc",
                strokeOpacity: 1,
                strokeWeight: 3
            },
            torres3: {
                path: [{ torre: 1, lng: -87.28256124, lat: 20.45526301 },
                { torre: 2, lng: -87.28044197, lat: 20.45781112 },
                { torre: 3, lng: -87.27845754, lat: 20.46024719 },
                { torre: 4, lng: -87.27648573, lat: 20.46260711 },
                { torre: 5, lng: -87.27458327, lat: 20.46497201 },
                { torre: 6, lng: -87.2724921, lat: 20.46751951 },
                { torre: 7, lng: -87.27064564, lat: 20.46979097 },
                { torre: 8, lng: -87.26895144, lat: 20.47182833 },
                { torre: 9, lng: -87.26747689, lat: 20.47362933 },
                { torre: 10, lng: -87.2661035, lat: 20.47529043 },
                { torre: 11, lng: -87.26399342, lat: 20.47735901 },
                { torre: 12, lng: -87.26161662, lat: 20.47964357 },
                { torre: 13, lng: -87.25927158, lat: 20.48187582 },
                { torre: 14, lng: -87.25690679, lat: 20.4841624 },
                { torre: 15, lng: -87.25455072, lat: 20.48641982 },
                { torre: 16, lng: -87.25219326, lat: 20.48862554 },
                { torre: 17, lng: -87.24969461, lat: 20.49108062 },
                { torre: 18, lng: -87.2470239, lat: 20.49365185 },
                { torre: 19, lng: -87.24460169, lat: 20.49593861 },
                { torre: 20, lng: -87.24220723, lat: 20.49825129 },
                { torre: 21, lng: -87.23981478, lat: 20.50058192 },
                { torre: 22, lng: -87.23743218, lat: 20.50290307 },
                { torre: 23, lng: -87.2346598, lat: 20.50460549 },
                { torre: 24, lng: -87.23199068, lat: 20.50629598 },
                { torre: 24.1, lng: -87.22994494, lat: 20.50760264 }
                ],
                geodesic: true,
                strokeColor: "#5efc03",
                strokeOpacity: 1,
                strokeWeight: 3
            },
            VadBlm: {
                path: [

                    { torre: 23.1, lng: -87.22994494, lat: 20.50760264 },
                    { torre: 24, lng: -87.22908778, lat: 20.50809993 },
                    { torre: 25, lng: -87.22641433, lat: 20.50972993 },
                    { torre: 26, lng: -87.22372182, lat: 20.51148643 },
                    { torre: 27, lng: -87.22097157, lat: 20.51314356 },
                    { torre: 28, lng: -87.21826931, lat: 20.51487288 },
                    { torre: 29, lng: -87.21547118, lat: 20.51667456 },
                    { torre: 30, lng: -87.21269201, lat: 20.51835871 },
                    { torre: 31, lng: -87.20987935, lat: 20.52015927 },
                    { torre: 32, lng: -87.20747866, lat: 20.52164513 },
                    { torre: 33, lng: -87.20535111, lat: 20.52299404 },
                    { torre: 34, lng: -87.20306053, lat: 20.52440637 },
                    { torre: 35, lng: -87.20085642, lat: 20.52595411 },
                    { torre: 36, lng: -87.19841229, lat: 20.52736655 },
                    { torre: 37, lng: -87.19655438, lat: 20.52967287 },
                    { torre: 38, lng: -87.19446668, lat: 20.53236799 },
                    { torre: 39, lng: -87.19229268, lat: 20.53514449 },
                    { torre: 40, lng: -87.19033896, lat: 20.53769483 },
                    { torre: 41, lng: -87.18833716, lat: 20.54020905 },
                    { torre: 42, lng: -87.18642159, lat: 20.54268701 },
                    { torre: 43, lng: -87.18442928, lat: 20.54521925 },
                    { torre: 44, lng: -87.18251351, lat: 20.54763391 },
                    { torre: 45, lng: -87.18046364, lat: 20.55027459 },
                    { torre: 46, lng: -87.1784711, lat: 20.55277965 },
                    { torre: 47, lng: -87.17652446, lat: 20.55536736 },
                    { torre: 48, lng: -87.17486916, lat: 20.5574098 },
                    { torre: 49, lng: -87.1723386, lat: 20.55940931 },
                    { torre: 50, lng: -87.16971203, lat: 20.56140888 },
                    { torre: 51, lng: -87.1670671, lat: 20.56342168 },
                    { torre: 52, lng: -87.164382, lat: 20.56546218 },
                    { torre: 53, lng: -87.16183191, lat: 20.56738927 },
                    { torre: 54, lng: -87.15947356, lat: 20.56923482 },
                    { torre: 55, lng: -87.15685626, lat: 20.57124322 },
                    { torre: 56, lng: -87.15422927, lat: 20.57322448 },
                    { torre: 57, lng: -87.1517365, lat: 20.5751604 },
                    { torre: 58, lng: -87.14915731, lat: 20.57709636 },
                    { torre: 59, lng: -87.14655887, lat: 20.5790323 },
                    { torre: 60, lng: -87.14417145, lat: 20.58095898 },
                    { torre: 61, lng: -87.14163044, lat: 20.58288577 },
                    { torre: 62, lng: -87.14049893, lat: 20.58372704 },
                    { torre: 63, lng: -87.13826468, lat: 20.58541859 },
                    { torre: 64, lng: -87.13561806, lat: 20.58744476 },
                    { torre: 65, lng: -87.13298097, lat: 20.58947992 },
                    { torre: 66, lng: -87.13172648, lat: 20.59248989 },
                    { torre: 67, lng: -87.1303257, lat: 20.59590899 },
                    { torre: 68, lng: -87.12895745, lat: 20.59924031 },
                    { torre: 69, lng: -87.12767558, lat: 20.60241451 },
                    { torre: 70, lng: -87.12650713, lat: 20.60527076 },
                    { torre: 71, lng: -87.12522367, lat: 20.60837106 },
                    { torre: 72, lng: -87.12401694, lat: 20.61147129 },
                    { torre: 73, lng: -87.12273341, lat: 20.61460772 },
                    { torre: 74, lng: -87.1213254, lat: 20.61817794 },
                    { torre: 75, lng: -87.11989803, lat: 20.62162167 },
                    { torre: 76, lng: -87.11850887, lat: 20.62491174 },
                    { torre: 77, lng: -87.11732099, lat: 20.62791251 },
                    { torre: 78, lng: -87.11643004, lat: 20.63014502 },
                    { torre: 79, lng: -87.11553905, lat: 20.63235944 },
                    { torre: 80, lng: -87.11452345, lat: 20.63483599 },
                    { torre: 81, lng: -87.1113562, lat: 20.63533504 },
                    { torre: 82, lng: -87.1078146, lat: 20.63585234 },
                    { torre: 83, lng: -87.10475289, lat: 20.63634217 },
                    { torre: 84, lng: -87.10139361, lat: 20.63685019 },
                    { torre: 85, lng: -87.09928204, lat: 20.63714961 },
                    { torre: 86, lng: -87.0962463, lat: 20.63575124 },
                    { torre: 87, lng: -87.09296604, lat: 20.63433462 },
                    { torre: 88, lng: -87.0897349, lat: 20.63283769 },
                    { torre: 89, lng: -87.08673519, lat: 20.63152785 },
                    { torre: 90, lng: -87.08348108, lat: 20.63013847 }


                ],
                geodesic: true,
                strokeColor: "#9d03fc",
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
                scaledSize: { width: 27, height: 39 }
            };
        },
        icon2() {
            return {
                url: photo2,
                scaledSize: { width: 27, height: 39 }
            };
        },
    }
}


</script>

