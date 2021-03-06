/*******************************************************************************
 *  Copyright 2012-2019 Esri
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 ******************************************************************************/

import QtQuick 2.6
import Esri.ArcGISRuntime 100.6
import Esri.ArcGISArToolkit 1.0

// Creates a scene centered on Yosemite National Park.
// Mode: Tabletop AR

Item {
    property alias scene: scene
    property alias originCamera: originCamera
    property LocationDataSource locationDataSource: null
    property double translationFactor: 18000.0

    SceneWithElevation {
        id:scene
        IntegratedMeshLayer {
            id: layer
            url: "https://tiles.arcgis.com/tiles/FQD0rKU8X5sAQfh8/arcgis/rest/services/" +
                 "VRICON_Yosemite_Sample_Integrated_Mesh_scene_layer/SceneServer"
        }
    }

    Camera {
        id: originCamera
        Point {
            y: 37.7308
            x: -119.612
            z: 1212.0
        }
        heading: 0.0
        pitch: 90.0
        roll: 0.0
    }
}
