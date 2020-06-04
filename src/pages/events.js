import React, { Component } from "react"
import Layout from "../components/layout"
import DocumentTitle from "react-document-title"
import { Col, Row } from "react-bootstrap"
import Event from "../components/event"

import event_1 from "../images/event_1.png"
import event_2 from "../images/event_2.png"
import event_3 from "../images/event_3.png"
import event_4 from "../images/event_4.png"

import event_5 from "../images/event_5.png"
import event_6 from "../images/event_6.png"
import event_7 from "../images/event_7.png"

const Events = () => {
  return (
    <Layout>
      <DocumentTitle title="Buyke | Evenements">
        <div className={"events"}>
          <Row className={"rowBordered"}>
            <Event image={event_1} title={"De Londres à Manchester"} class={"event colBordered"} desc={
              "Parcourez le cœur de l'Angleterre dans le cadre de l'un des événements les plus exigeants et les plus" +
              " gratifiants de l'année, en collectant des fonds pour Ambitious about Autism en cours de route."
            }/>
            <Event image={event_2} title={"L’esprit des #FESTIVE500"} class={"event colBordered"} desc={
              "La beauté du Festive 500 réside dans les sentiments qu’il fait jaillir en nous. Pour de nombreux" +
              " cyclistes, l’impact émotionnel de cette période de fête est si fort que l’envie de laisser une trace de" +
              " leur épopées cyclistes devient irrépressible. Que cela vous pousse à réaliser des gâteaux ou à tracer" +
              " des parcours, nous voulons que cette année encore vous trouviez l’inspiration nécessaire, en vous" +
              " faisant découvrir huit participations marquantes au Festive des années passées."
            }/>
            <Event image={event_3} title={"L'étape du Tour"} class={"event colBordered"} desc={
              "Offrant l'occasion d'imiter vos héros cyclistes et de repousser vos limites physiques, l’Étape du Tour" +
              " est l'un des plus grands événements sportifs au monde. Alors que les pros abordent le même parcours ce" +
              " week-end, nous faisons le bilan de l'édition 2019."
            }/>
            <Event image={event_4} title={"Un jour en enfer 2020"} class={"event"} desc={
              "Notre hommage annuel à la Reine des Classiques revient en avril pour sa onzième édition, avec toute une" +
              " série de sorties pimentées de pavés organisées à travers le monde."
            }/>
          </Row>

          {/*------------------------------------------------------------------------------------------------*/}

          <Row>
            <Event image={event_5} title={"Women's 100 avec qui allez vous rouler ?"} class={"event colBordered"} desc={
              "Les meilleures sorties à vélo sont celles que l’on partage avec d’autres. Pensé dans cet esprit, le Women’s" +
              " 100 rassemble des femmes cyclistes à travers le monde afin qu’elles partagent la route ensemble et qu’elles" +
              " gardent un souvenir impérissable de ce cap des 100"
            }/>
            <Event image={event_6} title={"De Manchester à Londres, préparation"} class={"event colBordered"} desc={
              "Emma Osenton, co-créatrice de l'itinéraire Manchester-Londres, donne quelques conseils intrigants sur les" +
              " longues distances, en préparation de l'événement."
            }/>
            <Event image={event_7} title={"#FESTIVE500, cartes postales routières"} class={"event colBordered"} desc={
              "Lorsque Rapha a reçu la candidature de Ruth Cousins pour les prix \"Spirit of the #Festive500\" de l'année" +
              " dernière, nous avons immédiatement su que nous avions trouvé notre gagnant."
            }/>
          </Row>
        </div>
      </DocumentTitle>
    </Layout>
  )
}

export default Events
