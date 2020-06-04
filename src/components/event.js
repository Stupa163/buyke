import { Col } from "react-bootstrap"
import React from "react"

const Event = (props) => {
  return (
    <Col md={3} className={props.class}>
      <img src={props.image} alt=""/>
      <h3>{props.title}</h3>
      <p>{props.desc}</p>
    </Col>
  )
}

export default Event
