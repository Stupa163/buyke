import React, { Component } from "react"
import Layout from "../components/layout"
import DocumentTitle from "react-document-title"

import chat from "../images/chat.png"

class Chat extends Component {
  render() {
    return (
      <Layout>
        <DocumentTitle title="Buyke | Chattez avec nos conseillers">
          <div className={"chat"}>
            <div>Je vous écoute</div>
            <img src={chat} alt=""/>
          </div>
        </DocumentTitle>
      </Layout>
    )
  }
}

export default Chat
