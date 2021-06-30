import React from 'react'
import ReactDOM from 'react-dom'
import gcp from '../img/gcp.png';

class GCPComponent extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            gcp: []
        };
    }

    componentDidMount(){
        const apiUrl = 'https://us-central1-coarchitech-318414.cloudfunctions.net/sandbox-gcp-function';
        fetch(apiUrl, {
            method : 'get',
           /* headers: new Headers({
                "access-control-allow-origin" : "*"
              })*/
        })
        .then((response)=>response.text())
        .then((result) => this.setState({gcp:result})            
        )
    }

    render() {
        return (
        <div className="App">
            <header className="App-header">
                <img src={gcp} className="App-logo" alt="logo" style={{width:200, height:200}}/>
                <p>
                    GCP Example
                </p>
                <p>                
                 <spam> {this.state.gcp}</spam>                
                </p>
                <a
                    className="App-link"
                    href="https://cloud.google.com/"
                    target="_blank"
                    rel="noopener noreferrer"
                >
                    GCP Console
                </a>
            </header>
        </div>
        )
    }
}

const element=<GCPComponent></GCPComponent>
ReactDOM.render(element, document.getElementById("gcp"))