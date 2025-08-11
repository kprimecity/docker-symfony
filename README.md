<div class="Box-sc-g0xbh4-0 js-snippet-clipboard-copy-unpositioned DirectoryRichtextContent-module__SharedMarkdownContent--YORdJ" data-hpc="true">
  <article class="markdown-body entry-content container-lg" itemprop="text">

   <p dir="auto">
      <a href="https://symfony.com/" rel="nofollow" target="_blank">
         <img src="https://github.com/user-attachments/assets/2156229d-219d-4a22-a907-b7b0824fb184" alt="Docker + Symfony" style="max-width: 100%;" />
      </a>
   </p>
    <h1 dir="auto">PHP + Nginx Docker Image 🐳 </h1>
    <p dir="auto">A lightweight Docker image combining <strong>PHP 8.4</strong> (via <a
            href="https://hub.docker.com/_/php" target="_blank" rel="nofollow">php:8.4-alpine </a>) and
        <strong>Nginx</strong> (via <a href="https://hub.docker.com/_/nginx" target="_blank" rel="nofollow">nginx:alpine
        </a>) for running PHP applications. Perfect for local development, testing, or production environments. </p>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📦 Features </h2>
    <ul dir="auto" class="">
        <li class="text-start "><strong>Lightweight</strong>: Built on Alpine Linux for minimal size.</li>
        <li class="text-start "><strong>PHP 8.4</strong>: Full PHP 8.4 support with FPM (FastCGI Process Manager).</li>
        <li class="text-start "><strong>Nginx</strong>: High-performance web server with reverse proxy capabilities.
        </li>
        <li class="text-start "><strong>Easy Configuration</strong>: Customizable Nginx and PHP-FPM settings.</li>
        <li class="text-start "><strong>Ready to Use</strong>: Out-of-the-box support for PHP applications.</li>
    </ul>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📁 Directory Structure </h2>
    <p dir="auto">When using this image, your project directory should look like this: </p>
    <div class="my-2"></div>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white"></div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language- rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-12" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 106px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">9</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">2</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">3</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">4</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">5</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list">
                                <div class="cm-activeLine cm-line">your-project/</div>
                                <div class="cm-line">├── src/ # PHP application files (e.g., index.php)</div>
                                <div class="cm-line">├── nginx/ # Custom Nginx config files (e.g., default.conf)</div>
                                <div class="cm-line">├── php/ # Custom PHP-FPM config files (e.g., www.conf)</div>
                                <div class="cm-line">└── Dockerfile # (Optional, if you're building your own image)
                                </div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 36.4334px; top: 5.30002px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-12"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🚀 Getting Started </h2>
    <h3 dir="auto">1. Clone the Repository </h3>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white">bash</div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language-bash rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-17" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 47.2px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">9</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">2</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list" data-language="shell">
                                <div class="cm-activeLine cm-line"><span class="ͼs">git</span> clone
                                    https://github.com/your-username/your-repo.git</div>
                                <div class="cm-line"><span class="ͼs">cd</span> your-repo</div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 36.4334px; top: 5.29999px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-17"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <h3 dir="auto">2. Build the Docker Image </h3>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white">bash</div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language-bash rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-20" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 27.6px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">9</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list" data-language="shell">
                                <div class="cm-activeLine cm-line">docker build <span class="ͼq">-t</span> php-nginx-app
                                    .</div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 36.4334px; top: 5.30005px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-20"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <h3 dir="auto">3. Run the Container </h3>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white">bash</div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language-bash rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-23" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 27.6px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">9</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list" data-language="shell">
                                <div class="cm-activeLine cm-line">docker run <span class="ͼq">-d</span> <span
                                        class="ͼq">-p</span> <span class="ͼu">80</span>:80 <span class="ͼq">-v</span>
                                    $(pwd)/src:/var/www/html <span class="ͼq">-v</span> $(pwd)/nginx:/etc/nginx/conf.d
                                    <span class="ͼq">-v</span> $(pwd)/php:/etc/php8.4/fpm www.conf php-nginx-app</div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 36.4334px; top: 5.29999px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-23"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <blockquote dir="auto">
        <p dir="auto">⚠️ Replace <code class="codespan cursor-pointer">www.conf</code> with your actual PHP-FPM config
            file if needed. </p>
    </blockquote>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🛠️ Configuration </h2>
    <h3 dir="auto">Nginx Configuration </h3>
    <p dir="auto">Place your custom Nginx config files in the <code class="codespan cursor-pointer">nginx/</code>
        directory. For example, <code class="codespan cursor-pointer">default.conf</code>: </p>
    <div class="my-2"></div>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white">nginx</div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language-nginx rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-31" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 360.8px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">99</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">2</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">3</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">4</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">5</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">6</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">7</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">8</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">9</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">10</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">11</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">12</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">13</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">14</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">15</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">16</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">17</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">18</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list" data-language="nginx">
                                <div class="cm-activeLine cm-line"><span class="ͼp">server</span> {</div>
                                <div class="cm-line"> <span class="ͼp">listen</span> 80;</div>
                                <div class="cm-line"> <span class="ͼp">server_name</span> localhost;</div>
                                <div class="cm-line"><br></div>
                                <div class="cm-line"> <span class="ͼp">root</span> /var/www/html;</div>
                                <div class="cm-line"> <span class="ͼp">index</span> <span class="ͼp">index</span>.<span
                                        class="ͼu">php index</span>.html;</div>
                                <div class="cm-line"><br></div>
                                <div class="cm-line"> <span class="ͼp">location</span> / {</div>
                                <div class="cm-line"> <span class="ͼp">try_files</span> <span class="ͼu">$uri
                                    </span>$uri/ /<span class="ͼp">index</span>.<span
                                        class="ͼu">php?</span>$query_string;</div>
                                <div class="cm-line"> }</div>
                                <div class="cm-line"><br></div>
                                <div class="cm-line"> <span class="ͼp">location</span> <span class="ͼu">~</span> <span
                                        class="ͼu">\</span>.<span class="ͼu">php$ </span>{</div>
                                <div class="cm-line"> <span class="ͼp">include</span> fastcgi_params;</div>
                                <div class="cm-line"> <span class="ͼp">fastcgi_pass</span> unix:/var/run/php8.<span
                                        class="ͼu">4-fpm</span>.sock;</div>
                                <div class="cm-line"> <span class="ͼp">fastcgi_param</span> <span
                                        class="ͼu">SCRIPT_FILENAME </span>$document_root$fastcgi_script_name;</div>
                                <div class="cm-line"> <span class="ͼp">fastcgi_index</span> <span
                                        class="ͼp">index</span>.php;</div>
                                <div class="cm-line"> }</div>
                                <div class="cm-line">}</div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 41.3px; top: 5.3px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-31"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <h3 dir="auto">PHP-FPM Configuration </h3>
    <p dir="auto">Customize PHP settings in the <code class="codespan cursor-pointer">php/www.conf</code> file. Example:
    </p>
    <div class="my-2"></div>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white">ini</div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language-ini rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-36" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 262.8px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">99</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">2</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">3</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">4</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">5</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">6</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">7</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">8</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">9</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">10</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">11</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">12</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">13</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list" data-language="properties">
                                <div class="cm-activeLine cm-line"><span class="cm-matchingBracket"><span
                                            class="ͼ11">[</span></span><span class="ͼ11">www</span><span
                                        class="cm-matchingBracket"><span class="ͼ11">]</span></span></div>
                                <div class="cm-line"><span class="ͼt">l</span><span class="ͼt">i</span><span
                                        class="ͼt">s</span><span class="ͼt">t</span><span class="ͼt">e</span><span
                                        class="ͼt">n</span><span class="ͼt"> </span>= /var/run/php8.4-fpm.sock</div>
                                <div class="cm-line"><span class="ͼt">u</span><span class="ͼt">s</span><span
                                        class="ͼt">e</span><span class="ͼt">r</span><span class="ͼt"> </span>= nginx
                                </div>
                                <div class="cm-line"><span class="ͼt">g</span><span class="ͼt">r</span><span
                                        class="ͼt">o</span><span class="ͼt">u</span><span class="ͼt">p</span><span
                                        class="ͼt"> </span>= nginx</div>
                                <div class="cm-line"><span class="ͼt">l</span><span class="ͼt">i</span><span
                                        class="ͼt">s</span><span class="ͼt">t</span><span class="ͼt">e</span><span
                                        class="ͼt">n</span><span class="ͼt">.</span><span class="ͼt">o</span><span
                                        class="ͼt">w</span><span class="ͼt">n</span><span class="ͼt">e</span><span
                                        class="ͼt">r</span><span class="ͼt"> </span>= nginx</div>
                                <div class="cm-line"><span class="ͼt">l</span><span class="ͼt">i</span><span
                                        class="ͼt">s</span><span class="ͼt">t</span><span class="ͼt">e</span><span
                                        class="ͼt">n</span><span class="ͼt">.</span><span class="ͼt">g</span><span
                                        class="ͼt">r</span><span class="ͼt">o</span><span class="ͼt">u</span><span
                                        class="ͼt">p</span><span class="ͼt"> </span>= nginx</div>
                                <div class="cm-line"><span class="ͼt">p</span><span class="ͼt">m</span><span class="ͼt">
                                    </span>= dynamic</div>
                                <div class="cm-line"><span class="ͼt">p</span><span class="ͼt">m</span><span
                                        class="ͼt">.</span><span class="ͼt">m</span><span class="ͼt">a</span><span
                                        class="ͼt">x</span><span class="ͼt">_</span><span class="ͼt">c</span><span
                                        class="ͼt">h</span><span class="ͼt">i</span><span class="ͼt">l</span><span
                                        class="ͼt">d</span><span class="ͼt">r</span><span class="ͼt">e</span><span
                                        class="ͼt">n</span><span class="ͼt"> </span>= 5</div>
                                <div class="cm-line"><span class="ͼt">p</span><span class="ͼt">m</span><span
                                        class="ͼt">.</span><span class="ͼt">s</span><span class="ͼt">t</span><span
                                        class="ͼt">a</span><span class="ͼt">r</span><span class="ͼt">t</span><span
                                        class="ͼt">_</span><span class="ͼt">s</span><span class="ͼt">e</span><span
                                        class="ͼt">r</span><span class="ͼt">v</span><span class="ͼt">e</span><span
                                        class="ͼt">r</span><span class="ͼt">s</span><span class="ͼt"> </span>= 2</div>
                                <div class="cm-line"><span class="ͼt">p</span><span class="ͼt">m</span><span
                                        class="ͼt">.</span><span class="ͼt">m</span><span class="ͼt">i</span><span
                                        class="ͼt">n</span><span class="ͼt">_</span><span class="ͼt">s</span><span
                                        class="ͼt">p</span><span class="ͼt">a</span><span class="ͼt">r</span><span
                                        class="ͼt">e</span><span class="ͼt">_</span><span class="ͼt">s</span><span
                                        class="ͼt">e</span><span class="ͼt">r</span><span class="ͼt">v</span><span
                                        class="ͼt">e</span><span class="ͼt">r</span><span class="ͼt">s</span><span
                                        class="ͼt"> </span>= 1</div>
                                <div class="cm-line"><span class="ͼt">p</span><span class="ͼt">m</span><span
                                        class="ͼt">.</span><span class="ͼt">m</span><span class="ͼt">a</span><span
                                        class="ͼt">x</span><span class="ͼt">_</span><span class="ͼt">s</span><span
                                        class="ͼt">p</span><span class="ͼt">a</span><span class="ͼt">r</span><span
                                        class="ͼt">e</span><span class="ͼt">_</span><span class="ͼt">s</span><span
                                        class="ͼt">e</span><span class="ͼt">r</span><span class="ͼt">v</span><span
                                        class="ͼt">e</span><span class="ͼt">r</span><span class="ͼt">s</span><span
                                        class="ͼt"> </span>= 3</div>
                                <div class="cm-line"><span class="ͼt">p</span><span class="ͼt">h</span><span
                                        class="ͼt">p</span><span class="ͼt">_</span><span class="ͼt">a</span><span
                                        class="ͼt">d</span><span class="ͼt">m</span><span class="ͼt">i</span><span
                                        class="ͼt">n</span><span class="ͼt">_</span><span class="ͼt">v</span><span
                                        class="ͼt">a</span><span class="ͼt">l</span><span class="ͼt">u</span><span
                                        class="ͼt">e</span><span class="ͼt">[</span><span class="ͼt">u</span><span
                                        class="ͼt">p</span><span class="ͼt">l</span><span class="ͼt">o</span><span
                                        class="ͼt">a</span><span class="ͼt">d</span><span class="ͼt">_</span><span
                                        class="ͼt">m</span><span class="ͼt">a</span><span class="ͼt">x</span><span
                                        class="ͼt">_</span><span class="ͼt">f</span><span class="ͼt">i</span><span
                                        class="ͼt">l</span><span class="ͼt">e</span><span class="ͼt">s</span><span
                                        class="ͼt">i</span><span class="ͼt">z</span><span class="ͼt">e</span><span
                                        class="ͼt">]</span><span class="ͼt"> </span>= 20M</div>
                                <div class="cm-line"><span class="ͼt">p</span><span class="ͼt">h</span><span
                                        class="ͼt">p</span><span class="ͼt">_</span><span class="ͼt">a</span><span
                                        class="ͼt">d</span><span class="ͼt">m</span><span class="ͼt">i</span><span
                                        class="ͼt">n</span><span class="ͼt">_</span><span class="ͼt">v</span><span
                                        class="ͼt">a</span><span class="ͼt">l</span><span class="ͼt">u</span><span
                                        class="ͼt">e</span><span class="ͼt">[</span><span class="ͼt">p</span><span
                                        class="ͼt">o</span><span class="ͼt">s</span><span class="ͼt">t</span><span
                                        class="ͼt">_</span><span class="ͼt">m</span><span class="ͼt">a</span><span
                                        class="ͼt">x</span><span class="ͼt">_</span><span class="ͼt">s</span><span
                                        class="ͼt">i</span><span class="ͼt">z</span><span class="ͼt">e</span><span
                                        class="ͼt">]</span><span class="ͼt"> </span>= 20M</div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 41.3px; top: 5.30002px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-36"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🌐 Usage </h2>
    <p dir="auto">After running the container, access your application in your browser: </p>
    <div class="my-2"></div>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white"></div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language- rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-42" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 27.6px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">9</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list">
                                <div class="cm-activeLine cm-line">http://localhost</div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 36.4334px; top: 5.29999px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-42"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <p dir="auto">You should see your PHP application (e.g., <code class="codespan cursor-pointer">index.php</code>)
        rendered by Nginx and PHP-FPM. </p>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🧪 Customization </h2>
    <h3 dir="auto">Environment Variables </h3>
    <p dir="auto">You can override default settings by setting environment variables: </p>
    <div class="my-2"></div>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white">bash</div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language-bash rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-51" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 27.6px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">9</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list" data-language="shell">
                                <div class="cm-activeLine cm-line">docker run <span class="ͼq">-e</span> <span
                                        class="ͼt">PHP_UPLOAD_MAX_FILESIZE</span><span class="ͼv">=</span>50M ...</div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 36.4334px; top: 5.29999px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-51"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <h3 dir="auto">Volume Mounts </h3>
    <p dir="auto">Mount your project files and configs: </p>
    <div class="my-2"></div>
    <div>
        <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
            <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white">bash</div>
            <div
                class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                        class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                        <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                            </svg></div>
                        <div>Collapse</div>
                    </button> <button
                        class="save-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Save</button>
                    <button
                        class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                </div>
            </div>
            <div class="language-bash rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-56" class="h-full w-full text-sm">
                    <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                        <div class="cm-announced" aria-live="polite"></div>
                        <div tabindex="-1" class="cm-scroller">
                            <div class="cm-gutters" aria-hidden="true" style="min-height: 66.8px; position: sticky;">
                                <div class="cm-gutter cm-lineNumbers">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;">9</div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;">1</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">2</div>
                                    <div class="cm-gutterElement" style="height: 19.6px;">3</div>
                                </div>
                                <div class="cm-gutter cm-foldGutter">
                                    <div class="cm-gutterElement"
                                        style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                            title="Unfold line">›</span></div>
                                    <div class="cm-gutterElement cm-activeLineGutter"
                                        style="height: 19.6px; margin-top: 4px;"></div>
                                </div>
                            </div>
                            <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                translate="no" contenteditable="true" class="cm-content" role="textbox"
                                aria-multiline="true" aria-autocomplete="list" data-language="shell">
                                <div class="cm-activeLine cm-line"><span class="ͼq">-v</span> $(pwd)/src:/var/www/html \
                                </div>
                                <div class="cm-line"><span class="ͼq">-v</span> $(pwd)/nginx:/etc/nginx/conf.d \</div>
                                <div class="cm-line"><span class="ͼq">-v</span> $(pwd)/php:/etc/php8.4/fpm</div>
                            </div>
                            <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                style="z-index: 150; animation-duration: 1200ms;">
                                <div class="cm-cursor cm-cursor-primary"
                                    style="left: 36.4334px; top: 5.30005px; height: 17px;"></div>
                            </div>
                            <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-56"
                class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden"></div>
        </div>
    </div>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📝 Notes </h2>
    <ul dir="auto" class="">
        <li class="text-start ">
            <p><strong>Alpine Linux</strong>: This image uses Alpine's package manager (<code
                    class="codespan cursor-pointer">apk</code>) for minimal size. </p>
        </li>
        <li class="text-start ">
            <p><strong>PHP Extensions</strong>: If you need additional PHP extensions (e.g., <code
                    class="codespan cursor-pointer">pdo</code>, <code class="codespan cursor-pointer">mysql</code>),
                install them in your Dockerfile: </p>
            <div class="my-2"></div>
            <div>
                <div class="relative my-2 flex flex-col rounded-lg" dir="ltr">
                    <div class="text-text-300 absolute pl-4 py-1.5 text-xs font-medium dark:text-white">Dockerfile</div>
                    <div
                        class="sticky top-8 mb-1 py-1 pr-2.5 flex items-center justify-end z-10 text-xs text-black dark:text-white">
                        <div class="flex items-center gap-0.5 translate-y-[1px]"><button
                                class="flex gap-1 items-center bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">
                                <div class="-translate-y-[0.5px]"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
                                        viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-3">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M8.25 15 12 18.75 15.75 15m-7.5-6L12 5.25 15.75 9"></path>
                                    </svg></div>
                                <div>Collapse</div>
                            </button> <button
                                class="copy-code-button bg-none border-none bg-gray-50 hover:bg-gray-100 dark:bg-gray-850 dark:hover:bg-gray-800 transition rounded-md px-1.5 py-0.5">Copy</button>
                        </div>
                    </div>
                    <div class="language-Dockerfile rounded-t-lg -mt-8 rounded-b-lg overflow-hidden">
                        <div class="pt-7 bg-gray-50 dark:bg-gray-850"></div>
                        <div id="code-textarea-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-60-1-2"
                            class="h-full w-full text-sm">
                            <div class="cm-editor ͼ1 ͼ3 ͼ4 ͼo">
                                <div class="cm-announced" aria-live="polite"></div>
                                <div tabindex="-1" class="cm-scroller">
                                    <div class="cm-gutters" aria-hidden="true"
                                        style="min-height: 27.6px; position: sticky;">
                                        <div class="cm-gutter cm-lineNumbers">
                                            <div class="cm-gutterElement"
                                                style="height: 0px; visibility: hidden; pointer-events: none;">9</div>
                                            <div class="cm-gutterElement cm-activeLineGutter"
                                                style="height: 19.6px; margin-top: 4px;">1</div>
                                        </div>
                                        <div class="cm-gutter cm-foldGutter">
                                            <div class="cm-gutterElement"
                                                style="height: 0px; visibility: hidden; pointer-events: none;"><span
                                                    title="Unfold line">›</span></div>
                                            <div class="cm-gutterElement cm-activeLineGutter"
                                                style="height: 19.6px; margin-top: 4px;"></div>
                                        </div>
                                    </div>
                                    <div style="tab-size: 4;" spellcheck="false" autocorrect="off" autocapitalize="none"
                                        translate="no" contenteditable="true" class="cm-content" role="textbox"
                                        aria-multiline="true" aria-autocomplete="list">
                                        <div class="cm-activeLine cm-line">RUN apk add --no-cache php8.4-pdo
                                            php8.4-mysql</div>
                                    </div>
                                    <div class="cm-layer cm-layer-above cm-cursorLayer" aria-hidden="true"
                                        style="z-index: 150; animation-duration: 1200ms;">
                                        <div class="cm-cursor cm-cursor-primary"
                                            style="left: 36.4334px; top: 5.29999px; height: 17px;"></div>
                                    </div>
                                    <div class="cm-layer cm-selectionLayer" aria-hidden="true" style="z-index: -2;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="plt-canvas-cd9b6cf8-3c82-4a73-97fd-feaac6814eb4-60-1-2"
                        class="bg-gray-50 dark:bg-[#202123] dark:text-white max-w-full overflow-x-auto scrollbar-hidden">
                    </div>
                </div>
            </div>
        </li>
    </ul>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">🤝 Contributing </h2>
    <ol start="1" dir="auto">
        <li class="text-start"> Fork the repository.</li>
        <li class="text-start"> Create a new branch (<code
                class="codespan cursor-pointer">git checkout -b feature/your-feature</code>).</li>
        <li class="text-start"> Make your changes.</li>
        <li class="text-start"> Commit your changes (<code
                class="codespan cursor-pointer">git commit -m "Add your feature"</code>).</li>
        <li class="text-start"> Push to the branch (<code
                class="codespan cursor-pointer">git push origin feature/your-feature</code>).</li>
        <li class="text-start"> Open a pull request.</li>
    </ol>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📄 License </h2>
    <p dir="auto">This project is licensed under the <a href="LICENSE" target="_blank" rel="nofollow">MIT License </a>.
        See the <a href="LICENSE" target="_blank" rel="nofollow">LICENSE </a> file for details. </p>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <h2 dir="auto">📌 Acknowledgments </h2>
    <ul dir="auto" class="">
        <li class="text-start "><a href="https://hub.docker.com/_/php" target="_blank" rel="nofollow">php:8.4-alpine
            </a></li>
        <li class="text-start "><a href="https://hub.docker.com/_/nginx" target="_blank" rel="nofollow">nginx:alpine
            </a></li>
        <li class="text-start ">Alpine Linux community</li>
    </ul>
    <div class="my-2"></div>
    <hr class="border-gray-100 dark:border-gray-850">
    <p dir="auto">Let me know if you need help extending this image with additional features like MySQL, Redis, or
        Composer support! 🚀 </p>
   
  </article>
</div>
