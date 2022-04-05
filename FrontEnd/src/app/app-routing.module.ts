import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { LoginComponent } from './login/login.component';
import { PostFormComponent } from './post-form/post-form.component';
import { PostsComponent } from './posts/posts.component';

const routes: Routes = [
  {
    path: 'login',
    component: LoginComponent
  },
  {
    path: 'posts',
    component: PostsComponent
  },
  {
    path: 'post-form',
    component: PostFormComponent
  },
  {
    path: '',
    pathMatch: 'full',
    redirectTo: 'posts'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes, { relativeLinkResolution: 'legacy' })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
