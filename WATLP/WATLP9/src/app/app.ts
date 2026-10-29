import { Component, signal } from '@angular/core';
import { DatePipe, UpperCasePipe } from '@angular/common';
// import { RouterOutlet } from '@angular/router';

@Component({
  // imports: [RouterOutlet],
  standalone: true,
  imports: [DatePipe, UpperCasePipe],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})

export class App {
  protected readonly title = signal('WATLP9');
  showMessage = true;
  members = ['Ramesh', 'Vikas', 'Guddi']
  currentDate = new Date();
  message = 'This is Team Ramesh.';
}
