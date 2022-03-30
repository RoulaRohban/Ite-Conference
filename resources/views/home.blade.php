<!DOCTYPE html>
<html lang="{{ App::getLocale() }}" dir="{{ App::getLocale() == 'ar' ? 'rtl' : 'ltr' }}">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>{{ $conference->getTranslatedAttribute('name') ?? '' }}</title>
    <meta name="description" content="تفاصيل عن الموقع">


    <!-- if language is arabic -->
    <link rel="stylesheet" href="{{ asset('website/css/bootstrap.rtl.min.css') }}">
    <!-- if language is english  -->
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->

    <link rel="stylesheet" href="{{ asset('website/css/aos.css') }}">
    <link rel="stylesheet" href="{{ asset('website/css/style.css') }}">
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="{{ route('home') }}" data-aos="fade-up">
                    <img src="{{ $conference->getTranslatedAttribute('logo') }}" alt="" />
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                    @if ('en' != App::getLocale())
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        @endif
                        @if ('ar' != App::getLocale())
                        <ul class="navbar-nav ma-auto mb-2 mb-lg-0">
                            @endif
                            <li class="nav-item" data-aos="fade-up">
                                <a class="nav-link active" aria-current="page" href="{{ route('home') }}">
                                    @lang('home.mainPage')
                                </a>
                            </li>
                            @foreach($sections as $section)
                            <li class="nav-item" data-aos="fade-up">
                                <a class="nav-link" href="#{{ $section->title }}">
                                    {{ $section->getTranslatedAttribute('title') }}
                                </a>
                            </li>
                            @endforeach
                            <li class="nav-item" data-aos="fade-up">
                                <a class="nav-link" href="#supervisors">
                                    @lang('home.supervisors')
                                </a>
                            </li>
                            <li class="nav-item" data-aos="fade-up">
                                <a class="nav-link" href="#contact">
                                    @lang('home.contactUs')
                                </a>
                            </li>
                        </ul>
                        @if ('en' != App::getLocale())
                        <div class="d-flex" style="margin-left: 5%">
                            @endif
                            @if ('ar' != App::getLocale())
                            <div class="d-flex" style="margin-right: 5%">
                                @endif
                                <span class="dropdown lang">
                                    <button class="btn btn-transparent dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-translate" viewBox="0 0 16 16">
                                            <path d="M4.545 6.714 4.11 8H3l1.862-5h1.284L8 8H6.833l-.435-1.286H4.545zm1.634-.736L5.5 3.956h-.049l-.679 2.022H6.18z" />
                                            <path d="M0 2a2 2 0 0 1 2-2h7a2 2 0 0 1 2 2v3h3a2 2 0 0 1 2 2v7a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2v-3H2a2 2 0 0 1-2-2V2zm2-1a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H2zm7.138 9.995c.193.301.402.583.63.846-.748.575-1.673 1.001-2.768 1.292.178.217.451.635.555.867 1.125-.359 2.08-.844 2.886-1.494.777.665 1.739 1.165 2.93 1.472.133-.254.414-.673.629-.89-1.125-.253-2.057-.694-2.82-1.284.681-.747 1.222-1.651 1.621-2.757H14V8h-3v1.047h.765c-.318.844-.74 1.546-1.272 2.13a6.066 6.066 0 0 1-.415-.492 1.988 1.988 0 0 1-.94.31z" />
                                        </svg>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                        @if ('en' != App::getLocale())
                                        <li class="nav-item" data-aos="fade-up">
                                            <a class="nav-link" href="{{ route('lang.switch', 'en') }}">
                                                @lang('home.englishLanguage')
                                            </a>
                                        </li>
                                        @endif
                                        @if ('ar' != App::getLocale())
                                        <li class="nav-item" data-aos="fade-up">
                                            <a class="nav-link" href="{{ route('lang.switch', 'ar') }}">
                                                @lang('home.arabicLanguage')
                                            </a>
                                        </li>
                                        @endif
                                    </ul>
                                </span>
                            </div>
                        </div>
                </div>
        </nav>
    </header>
    <main id="home">
        <section id="banner" class="position-relative" style="background-image: linear-gradient(rgba(0, 0, 0, 0.445), rgba(0, 0, 0, 0.5)), url('{{ str_replace('\\', '/', $conference->getTranslatedAttribute('cover_image')) }}');">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        @if ('ar' != App::getLocale())
                        <div style="right: auto;left: 5%" class="description position-absolute translate-middle" data-aos="zoom-in-up">
                            @endif
                            @if ('en' != App::getLocale())
                            <div class="description position-absolute translate-middle" data-aos="zoom-in-up">
                                @endif
                                <h1>{{ $conference->getTranslatedAttribute('name') ?? '' }}</h1>
                                <p>{{ $conference->getTranslatedAttribute('bio') ?? '' }}</p>
                                <p>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                        <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
                                    </svg>
                                    {{ $conference->getTranslatedAttribute('country') ?? '' }}
                                </p>
                                <p>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar3" viewBox="0 0 16 16">
                                        <path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z" />
                                        <path d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                                    </svg>
                                    {{ $conference->date ?? '' }}
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
                                        <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z" />
                                        <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z" />
                                    </svg>
                                </p>
                                <button type="button" class="btn btn-primary btn-lg">@lang('home.register')</button>
                                <div class="counter">
                                    <p id="demo"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <section id="desc">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        @foreach($sections as $section)
                        <div id="{{ $section->title }}" class="card p-5 mb-5 bg-dark bg-opacity-10" data-aos="fade-up">
                            <h2>{{ $section->getTranslatedAttribute('title') }}</h2>
                            <hr>
                            <p class="mt-5">{{ $section->getTranslatedAttribute('description') }}</p>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        <section id="supervisors">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mb-5">
                        <div class="text-center">
                            <h3>@lang('home.supervisors')</h3>
                        </div>
                    </div>
                    @foreach($supervisors as $supervisor)
                    <div class="col-md-4 mb-5" data-aos="fade-up" data-aos-anchor-placement="bottom-bottom">
                        <div class="supervisor text-center">
                            <img src="{{ $supervisor->image }}" alt="">
                            <div class="title my-3 fw-bolder">{{ $supervisor->getTranslatedAttribute('name') }}</div>
                            <small class="my-3">{{ $supervisor->getTranslatedAttribute('position') }}</small>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </section>
        <section id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center">
                            <h3>@lang('home.contactUs')</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                @if ('ar' != App::getLocale())
                <div class="row" style="direction: ltr">
                    @endif
                    @if ('ar' != App::getLocale())
                    <div class="row" style="direction: rtl">
                        @endif
                        <div class="col-md-6 offset-md-3 mt-5">
                            @if ('ar' != App::getLocale())
                            <form class="row g-3" method="POST" style="direction: ltr" action="{{ route('contact-us') }}">
                                @endif
                                @if ('ar' != App::getLocale())
                                <form class="row g-3" method="POST" style="direction: rtl" action="{{ route('contact-us') }}">
                                    @endif

                                    @csrf
                                    <div class="col-md-12">
                                        <label for="inputEmail4" class="form-label">@lang('home.email')</label>
                                        <input type="email" class="form-control" id="inputEmail4" name="email">
                                    </div>
                                    <div class="col-12">
                                        <label for="inputAddress" class="form-label">@lang('home.title')</label>
                                        <input type="text" class="form-control" id="inputAddress" name="title">
                                    </div>
                                    <div class="col-12">
                                        <label for="inputAddress2" class="form-label">@lang('home.message')</label>
                                        <textarea type="text" class="form-control" id="inputAddress2" rows="6" placeholder="الرسالة" name="message">
                                    </textarea>
                                    </div>
                                    <div class="col-12">
                                        <button type="submit" class="btn btn-primary">@lang('home.send')</button>
                                    </div>
                                </form>
                        </div>
                    </div>
                </div>
        </section>
    </main>
    <footer id="lap">
        <div>
            Copyright 2022 Damascus university | Developed by:
            <a href="https://www.linkedin.com/in/roula-alrohban-452b91202" class="Aous" target="_blank">
                Roula AlRohban
            </a>
            &
            <a href="https://aous-mmd.github.io" class="Aous" target="_blank">
                Aous Mohammad
            </a>
            | Designed By:
            <a href="https://www.behance.net/rouaakl" class="Aous" target="_blank">
                Roua'a Alkilany
            </a>
            | Deployed by:
            <a href="https://linkedin.com/in/yazan-alkahaleh-3155541a3" class="Aous" target="_blank">
                Yazan Alkahaleh
            </a>
        </div>
    </footer>
    <footer id="mobile">
        <div>
            <div class="">Copyright 2022 Damascus university</div>
            <div>
                Developed by:<br>
                <a href="https://www.linkedin.com/in/roula-alrohban-452b91202" class="Aous" target="_blank">
                    Roula AlRohban
                </a>
                &
                <a href="https://aous-mmd.github.io" class="Aous" target="_blank">
                    Aous Mohammad
                </a>
            </div>
            <div>
                Designed By:
                <a href="https://www.behance.net/rouaakl" class="Aous" target="_blank">
                    Roua'a Alkilany
                </a>
            </div>
            <div>
                Deployed by:
                <a href="https://linkedin.com/in/yazan-alkahaleh-3155541a3" class="Aous" target="_blank">
                    Yazan Alkahaleh
                </a>
            </div>
        </div>
    </footer>
    <script src="{{ asset('website/js/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ asset('website/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('website/js/aos.js') }}"></script>
    <script>
        AOS.init();
        // Set the date we're counting down to

        // هون حطي الموعد تبع المؤتمر
        var countDownDate = new Date('{{ $conference->date }}').getTime();

        // Update the count down every 1 second
        var x = setInterval(function() {

            // Get today's date and time
            var now = new Date().getTime();

            // Find the distance between now and the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Output the result in an element with id="demo"
            document.getElementById("demo").innerHTML =
                `<div class="datetime">
                    <span>${days}</span>@lang('home.days')
                    <span>${hours}</span>@lang('home.hours')
                    <span>${minutes}</span>@lang('home.minutes')
                    <span>${seconds}</span>@lang('home.seconds')
            </div>`;

            // If the count down is over, write some text
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("demo").innerHTML = "EXPIRED";
            }
        }, 1000);
    </script>
</body>

</html>