import React from "react"
import { Card, Col } from "react-bootstrap"

const Product = (props) => {
  const redirect = (path) => {
    window.location.href = `/${path}`;
  }
    return (
      <Col md={3} className={"product"} onClick={() => redirect(props.details.path)}>
        <Card>
          <Card.Img variant="top" src={props.details.image} />
          <Card.Body>
            <Card.Title>{props.details.title}</Card.Title>
            <Card.Text>
              <div className={"price"}>{props.details.price} €</div>
            </Card.Text>
          </Card.Body>
        </Card>
      </Col>
    )
}

export default Product
