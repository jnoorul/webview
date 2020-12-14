import "./App.css";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";
import { useEffect, useState } from "react";

export default function App() {
  return (
    <Router>
      <div>
        <nav>
          <ul>
            <li>
              <UniversalLink to="portfolio">Portfolio</UniversalLink>
            </li>
            <li>
              <UniversalLink to="insights">Insights</UniversalLink>
            </li>
            <li>
              <UniversalLink to="instruments">Instruments</UniversalLink>
            </li>
            <li>
              <UniversalLink to="trade">Trade</UniversalLink>
            </li>
          </ul>
        </nav>

        {/* A <Switch> looks through its children <Route>s and
            renders the first one that matches the current URL. */}
        <Switch>
          <Route path="/instruments">
            <Instruments />
          </Route>
          <Route path="/insights">
            <Insights />
          </Route>
          <Route path="/portfolio">
            <Portfolio />
          </Route>
          <Route path="/trade">
            <Trade />
          </Route>
        </Switch>
      </div>
    </Router>
  );
}

function Portfolio() {
  return <h2>Portfolio</h2>;
}

function Insights() {
  return <h2>Insights</h2>;
}

function Instruments() {
  return <h2>Instruments</h2>;
}

function Trade() {
  return <h2>Trade</h2>;
}

function UniversalLink({ to = "", children = "" }) {
  const [isApp, setIsApp] = useState(false);

  useEffect(() => {
    var userAgent = window.navigator.userAgent.toLowerCase();
    setIsApp(/iphone|ipod|ipad/.test(userAgent));
  }, [isApp]);

  if (isApp) {
    return <a href={`dpb://home?page=${to}`}>{children}</a>;
  }
  return <Link to={to}>{children}</Link>;
}
