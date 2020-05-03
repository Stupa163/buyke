import React, { Component } from "react"
import { Col, Row } from "react-bootstrap"
import ListGroup from "react-bootstrap/ListGroup"
import { Link } from "gatsby"

class Footer extends Component {
  render() {
    return (
      <footer>
        <Row>
          <Col md={4} className={"customer_care"}>
            <div>
              Service client: <hr/>
            </div>
            <ListGroup variant="flush">
              <ListGroup.Item>+33 6 00 00 00 00</ListGroup.Item>
              <ListGroup.Item>service_client@buyke.fr</ListGroup.Item>
              <ListGroup.Item>Questions fréquentes</ListGroup.Item>
              <ListGroup.Item><Link to={"/contact"}>Formulaire de contact</Link></ListGroup.Item>
            </ListGroup>
          </Col>
          <Col md={1}/>
          <Col md={4} className={"infos"}>
            <div>
              Informations: <hr/>
            </div>
            <ListGroup variant="flush">
              <ListGroup.Item>A propos de Buyke</ListGroup.Item>
              <ListGroup.Item>Recrutement</ListGroup.Item>
              <ListGroup.Item>Conditions d'utilisations</ListGroup.Item>
              <ListGroup.Item><Link to={"/chat"}>Chattez avec nos conseillers</Link> </ListGroup.Item>
            </ListGroup>
          </Col>
        </Row>
      </footer>
    )
  }
}

export default Footer
