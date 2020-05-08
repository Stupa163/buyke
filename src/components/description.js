import React from "react"
import Row from "react-bootstrap/Row"
import Col from "react-bootstrap/Col"

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
      <Row><Col md={{ span: 8, offset: 2 }}><img src={desc_1} alt=""/></Col></Row>
      <Row><Col md={{ span: 8, offset: 2 }}><img src={desc_2} alt=""/></Col></Row>
      <Row><Col md={{ span: 8, offset: 2 }}><img src={desc_3} alt=""/></Col></Row>
      <Row><Col md={{ span: 8, offset: 2 }}><img src={desc_4} alt=""/></Col></Row>

      <Row><Col md={{ span: 8, offset: 2 }}><img src={size_chart} alt=""/></Col></Row>

      <Row><Col md={{ span: 8, offset: 2 }}>
        <div className={"main"}>
          Matériel: 100 % Polyester et 20% Lycra <br/><br/>
          Ce maillot possède une très forte résistance aux chocs, une bonne élasticité etest résistant à l'abrasion <br/><br/>
          Tissu de haute qualité<br/><br/>
          Il peut vous garder au sec et au frais même sous une forte chaleur ! <br/><br/>
          Même si vous transpirez, le maillot n'adhère jamais à votre peau ! <br/><br/>

          ----------------------------------------- <br/><br/>
          Description de Production
        </div>
      </Col></Row>

      <Row><Col md={{ span: 8, offset: 2 }}><img src={data} alt=""/></Col></Row>

      <Row><Col md={{ span: 8, offset: 2 }}><img src={tech_1} alt=""/></Col></Row>
      <Row><Col md={{ span: 8, offset: 2 }}><img src={tech_2} alt=""/></Col></Row>
      <Row><Col md={{ span: 8, offset: 2 }}><img src={tech_3} alt=""/></Col></Row>
      <Row><Col md={{ span: 8, offset: 2 }}><img src={tech_4} alt=""/></Col></Row>

    </div>
  )
}

export default Description
