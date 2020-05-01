import React from "react"

import desc_1 from "../images/desc_1.png"
import desc_2 from "../images/desc_2.png"
import desc_3 from "../images/desc_3.png"
import desc_4 from "../images/desc_4.png"

import size_chart from "../images/size_chart.png"

import tech_1 from "../images/tech_1.png"
import tech_2 from "../images/tech_2.png"
import tech_3 from "../images/tech_3.png"
import tech_4 from "../images/tech_4.png"

const Description = ({ data }) => {
  console.log(data)
  return (
    <div className={"description"}>
      <div className="images">
        <img src={desc_1} alt=""/>
        <img src={desc_2} alt=""/>
        <img src={desc_3} alt=""/>
        <img src={desc_4} alt=""/>
      </div>
      <div className="sizes">
        <img src={size_chart} alt=""/>
      </div>
      <div className={"main"}>
        Matériel: 100 % Polyester et 20% Lycra <br/><br/>
        Avoir une très forte résistance aux chocs, une bonne élasticité, résistance à l'abrasion <br/><br/>
        Tissu de collants de haute qualité : Lumière et diminuer le vent <br/><br/>
        Il peut vous garder au sec et au frais dans un état de chaleur ! <br/><br/>
        Même si vous transpirez, le maillot n'adhère jamais à votre peau ! <br/><br/>

        ----------------------------------------- <br/><br/>
        Description de Production
      </div>
      <div className="sameImage">
        <img src={data} alt=""/>
      </div>
      <div className="tech">
        <img src={tech_1} alt=""/>
        <img src={tech_2} alt=""/>
        <img src={tech_3} alt=""/>
        <img src={tech_4} alt=""/>
      </div>
    </div>
  )
}

export default Description
