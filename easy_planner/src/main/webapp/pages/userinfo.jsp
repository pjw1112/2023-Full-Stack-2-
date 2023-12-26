<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>easy planner</title>
        <style type="text/css">
        
        </style>
         <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body>
        <div class="wrapper">
           
           
           <main class="flex flex-col md:flex-row md:space-x-6 bg-[#caf0f8]">
        <aside class="w-full max-w-md mx-auto md:w-96 md:mx-0">
            <div class="rounded-lg border text-card-foreground shadow-sm overflow-hidden bg-[#ade8f4]" data-v0-t="card">
                <div class="px-6 pt-6 pb-4 space-y-1">
                    <span class="relative flex shrink-0 overflow-hidden rounded-full h-24 w-24 mx-auto">
                        <img class="aspect-square h-full w-full" alt="User avatar" src="">
                    </span>
                    <h2 class="text-2xl font-bold text-center text-[#0077b6]">사용자 이름</h2>
                    <p class="text-center text-[#023e8a]">johndoe@example.com</p>
                </div>
                <hr>
                <div class="p-6 px-6 py-4 space-y-2">
                    <div>
                        <h3 class="text-lg font-semibold text-[#0077b6]">Account Settings</h3>
                        <ul class="mt-2 space-y-2">
                            <li><a class="text-[#48cae4] hover:underline" href="#">Change Password</a></li>
                            <li><a class="text-[#48cae4] hover:underline" href="#">Update Email</a></li>
                            <li><a class="text-[#48cae4] hover:underline" href="#">Manage Notifications</a></li>
                        </ul>
                    </div><button
                        class="inline-flex items-center justify-center rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-primary/90 h-10 px-4 py-2 w-full bg-[#0077b6] text-white">Log
                        Out</button>
                </div>
            </div>
        </aside>
        <section class="w-full max-w-3xl mx-auto md:mx-0 md:w-1/2">
            <div class="rounded-lg border text-card-foreground shadow-sm w-full bg-[#ade8f4]" data-v0-t="card">
                <div class="flex flex-col space-y-1.5 p-6 bg-[#0077b6] text-white">
                    <h3 class="text-2xl font-semibold leading-none tracking-tight">User Details</h3>
                </div>
                <div class="p-6 space-y-4">
                    <div class="space-y-2"><label
                            class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-[#0077b6]"
                            for="username">Username</label><input
                            class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                            id="username" placeholder="Enter your username"></div>
                    <div class="space-y-2"><label
                            class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-[#0077b6]"
                            for="email">Email</label><input
                            class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                            id="email" placeholder="Enter your email" type="email"></div>
                    <div class="space-y-2"><label
                            class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-[#0077b6]"
                            for="bio">Bio</label><textarea
                            class="flex w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 min-h-[100px]"
                            id="bio" placeholder="Tell something about yourself"></textarea></div>
                </div>
                <div class="flex items-center p-6 bg-[#0077b6]"><button
                        class="inline-flex items-center justify-center rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-primary/90 h-10 px-4 py-2 ml-auto bg-[#48cae4] text-white">Save
                        Changes</button></div>
            </div>
        </section>
    </main>
           
           
           
           
           
           
           
           
           
           
           
            
            <a href="users_delete_view.do">회원 탈퇴</a>
        </div>
      
    </body>

    </html>