<div align="center">
<h3 align="center">Domain Driven Design Generator</h3>

  <p align="center">
    An awesome Domain Driven Design Generator to jumpstart your projects!
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
  </ol>
</details>

## About The Project

There are many great nodejs templates available on GitHub; however, we didn't find one that really suited our needs so we
created this ddd-generator.

Here's why:

* Your time should be focused on creating project business logic because this package will generate basic CRUD operations.
* You shouldn't be doing the same tasks over and over like creating CRUD operations from scratch.
* This generator uses prisma data models to generate code.

<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

This project is built on the top of hygen package for typescript.

* [Hygen](https://www.hygen.io/)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

You should have a basic setup of nodejs project using typescript

### Prerequisites

Should have a sound knowledge of Domain Driven Design, nodejs and typescript.

### Installation

This generator leverages <a href="https://www.prisma.io/">Prisma</a>  data models to so you should have schema.prisma file in your project.
1. You can clone the basic nodejs boilerplate
   ```sh
   git clone https://github.com/carbonteq/ddd-project-starter.git
   ```
2. Configure prisma and its schema.prisma file. Write data models in it with db datasource
3. Install ddd-generator package
   ```sh
   npm i ddd-generator
   ```
<p align="right">(<a href="#top">back to top</a>)</p>

## Usage

Use following command to generate code.

2. Run following command. A command prompt will appear where you will be able to select different options.
   ```sh
   npx ddd-generator
   ```

<p align="right">(<a href="#top">back to top</a>)</p>

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any
contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also
simply open an issue with the tag "enhancement". Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>