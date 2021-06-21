import React from 'react'
import ReactDOM from 'react-dom'
import azure from '../img/azure.png';

class AzureComponent extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            azure: []
        };
    }

    componentDidMount(){
        const apiUrl = 'https://coarchitech.azurewebsites.net/api/helloworld?code=x3sGsCtLbpS0fXdcme3UNs2V5VzneqyPMuJ0aXzfffuEgflJaGxJag==';
        fetch(apiUrl)
        .then((response)=>response.text())
        .then((result) => this.setState({azure:result})            
        )
    }

    render() {
        return (
        <div className="App">
            <header className="App-header">
                <img src={azure} className="App-logo" alt="logo" style={{width:200, height:200}}/>
                <p>
                    Azure Example
                </p>
                <p>                    
                    {this.state.azure}
                </p>
                <a
                    className="App-link"
                    href="https://portal.azure.com/"
                    target="_blank"
                    rel="noopener noreferrer"
                >
                    Azure Console
                </a>
            </header>
        </div>
        )
    }
}

const element=<AzureComponent></AzureComponent>
ReactDOM.render(element, document.getElementById("azure"))