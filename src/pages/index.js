import React, { Component } from "react"
import ReactPlayer from "react-player"
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from "../components/header"

class IndexPage extends Component {
  componentDidMount() {
    document.title = "Buyke | Just buy it"
  }

  render() {
    const Moto =
      <div className={"moto"}>
        <div className={"main"}>DONNEZ LE TON</div>
        <div className={"secondary"}>Des essentiels pour rouler aux nouvelles couleurs de la saison.</div>
      </div>

    const Video =
      <div className={"video"}>
        <ReactPlayer
          url='https://s1.adis.ws/rapha/_vid/soar%20in%20the%20sun%201920x842%2010s/14a7de8b-40a8-4019-adda-9b89a98f74e2/video/0a36bbd1-554f-493d-be42-76ed66ab8619.webm'
          width={"100%"}
          height={"100%"}
          muted
          playing
          loop
        />
      </div>

    return (
      <div className={"home"}>
        <Header/>
        {Moto}
        {Video}
      </div>
    )
  }
}

export default IndexPage
