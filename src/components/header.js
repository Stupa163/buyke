import { Link } from "gatsby"
import PropTypes from "prop-types"
import React from "react"
import { Nav, Navbar } from "react-bootstrap"

const Header = () => (
  <Navbar bg="light" variant="light">
    <Navbar.Brand href="/">Buyke</Navbar.Brand>
    <Nav className="mr-auto">
      <Nav.Link href="/products">Hommes</Nav.Link>
      <Nav.Link href="/products">Femmes</Nav.Link>
      <Nav.Link href="#pricing">Récits</Nav.Link>
      <Nav.Link href="#pricing">Rouler</Nav.Link>
    </Nav>
  </Navbar>
  )

Header.propTypes = {
  siteTitle: PropTypes.string,
}

Header.defaultProps = {
  siteTitle: ``,
}

export default Header
