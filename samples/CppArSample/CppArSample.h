// Copyright 2019 ESRI
//
// All rights reserved under the copyright laws of the United States
// and applicable international laws, treaties, and conventions.
//
// You may freely redistribute and use this sample code, with or
// without modification, provided you include the original copyright
// notice and use restrictions.
//
// See the Sample code usage restrictions document for further information.

#ifndef CppArSample_H
#define CppArSample_H

#include <QObject>
#include "ArcGISArView.h"

namespace Esri
{
namespace ArcGISRuntime
{
class Scene;
class SceneQuickView;
}
}

class CppArSample : public QObject
{
  Q_OBJECT

  Q_PROPERTY(Esri::ArcGISRuntime::Toolkit::ArcGISArView* arcGISArView READ arcGISArView
             WRITE setArcGISArView NOTIFY arcGISArViewChanged)
  Q_PROPERTY(Esri::ArcGISRuntime::SceneQuickView* sceneView READ sceneView WRITE setSceneView NOTIFY sceneViewChanged)

public:
  explicit CppArSample(QObject* parent = nullptr);
  ~CppArSample() override;

  Esri::ArcGISRuntime::Toolkit::ArcGISArView* arcGISArView() const;
  void setArcGISArView(Esri::ArcGISRuntime::Toolkit::ArcGISArView* arcGISArView);

  Esri::ArcGISRuntime::SceneQuickView* sceneView() const;
  void setSceneView(Esri::ArcGISRuntime::SceneQuickView* sceneView);

  Q_INVOKABLE void createBrestScene();
  Q_INVOKABLE void createBerlinScene();

signals:
  void arcGISArViewChanged();
  void sceneViewChanged();

private:
  Esri::ArcGISRuntime::Toolkit::ArcGISArView* m_arcGISArView = nullptr;
  Esri::ArcGISRuntime::SceneQuickView* m_sceneView = nullptr;
  Esri::ArcGISRuntime::Scene* m_scene = nullptr;
};

#endif // CppArSample_H
