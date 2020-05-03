//Form component
import React from "react"
import Layout from "../components/layout"
import { Form, FormGroup, FormLabel } from "react-bootstrap"
import Row from "react-bootstrap/Row"
import Col from "react-bootstrap/Col"

class Contact extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      name: "",
      email: "",
      message: ""
    }

    this.handleChange = this.handleInputChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleInputChange(event) {
    const target = event.target
    const value = target.type === "checkbox" ? target.checked : target.value
    const name = target.name

    this.setState({
      [name]: value
    })
  }

  handleSubmit(event) {
    event.preventDefault()
  }

  render() {
    return (
      <Layout>
        <div className={"contact"}>
          <Row>
            <Col md={{ span: 10, offset: 1 }}>
              <Form onSubmit={this.handleSubmit} name="contact" method="post" netlify-honeypot="bot-field"
                    data-netlify="true">
                <input type="hidden" name="form-name" value="contact"/>
                <FormGroup>
                  <FormLabel htmlFor="nameImput">Votre nom</FormLabel>
                  <Form.Control as="input" type="text" name="name" value={this.state.name} onChange={this.handleChange}
                                className="form-control" id="nameImput" placeholder="Jean Dupond"/>
                </FormGroup>
                <FormGroup>
                  <FormLabel htmlFor="mailImput">Votre adresse mail</FormLabel>
                  <Form.Control as="input" type="text" name="email" value={this.state.mail} onChange={this.handleChange}
                                className="form-control" id="mailImput" placeholder="jean.dupond@gmail.com"/>
                </FormGroup>
                <FormGroup>
                  <FormLabel htmlFor="messageImput">Name</FormLabel>
                  <Form.Control as="textarea" name="message" value={this.state.message} onChange={this.handleChange}
                                className="form-control" rows={4}
                                id="messageImput" placeholder="Votre message"/>
                </FormGroup>
                <input type="submit" value="Submit" className="btn btn-primary"/>
              </Form>
            </Col>
          </Row>
        </div>
      </Layout>
    )
  }
}

export default Contact
