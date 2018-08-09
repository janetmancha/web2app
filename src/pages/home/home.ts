import { Component } from '@angular/core';
import { InAppBrowser } from '@ionic-native/in-app-browser';


@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  constructor(private iab: InAppBrowser) { }
  browser = this.iab.create('https://opositafacil.com/', '_self');
}
