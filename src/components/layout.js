/**
 * Layout component that queries for data
 * with Gatsby's useStaticQuery component
 *
 * See: https://www.gatsbyjs.org/docs/use-static-query/
 */

import React from "react"
import PropTypes from "prop-types"
import { useStaticQuery, graphql } from "gatsby"

import Header from "./header"
import Footer from "./footer"
import "./layout.css"

const Layout = ({ children }) => {
  const data = useStaticQuery(graphql`
    query SiteTitleQuery {
      site {
        siteMetadata {
          title
        }
      }
    }
  `)

  return (
    <>
      <Header siteTitle={data.site.siteMetadata.title} />
      <div
        style={{
          margin: `0 auto`,
          padding: `0 1.0875rem 1.45rem`,
        }}
      >
        <main>{children}</main>
        <div id="snipcart" data-api-key="ZjkzYWZjMjEtNGZkMy00NDYyLTk2MzYtY2I0OTFhZWExZjBhNjM3MjM5MTQ5NDYyNTYzNzk0" data-config-add-product-behavior="none" hidden/>
        <script src="https://cdn.snipcart.com/themes/v3.0.12/default/snipcart.js"/>
        <Footer/>
      </div>
    </>
  )
}

Layout.propTypes = {
  children: PropTypes.node.isRequired,
}

export default Layout
