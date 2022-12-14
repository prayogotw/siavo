<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [App\Http\Controllers\FrontendController::class, 'index']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/new-topic', function () {
    return view('klien.new-topic');
});
Route::get('/category/overview/{id}', [App\Http\Controllers\FrontendController::class, 'categoryOverview'])->name('category.overview');

Route::get('/forum/overview/{id}', [App\Http\Controllers\FrontendController::class, 'forumOverview'])->name('forum.overview');

Route::middleware(['auth', 'admin'])->group(function(){

    Route::get('dashboard/home', [App\Http\Controllers\DashboardController::class, 'home']);
    Route::get('dashboard/category/new', [App\Http\Controllers\CategoryController::class, 'create'])->name('category.new');
    Route::post('dashboard/category/new', [App\Http\Controllers\CategoryController::class, 'store'])->name('category.store');
    Route::get('dashboard/categories', [App\Http\Controllers\CategoryController::class, 'index'])->name('categories');
    Route::get('dashboard/categories/{id}', [App\Http\Controllers\CategoryController::class, 'show'])->name('category');

    Route::get('dashboard/categories/edit/{id}', [App\Http\Controllers\CategoryController::class, 'edit'])->name('category.edit');
    Route::post('dashboard/categories/edit/{id}', [App\Http\Controllers\CategoryController::class, 'update'])->name('category.update');
    Route::get('dashboard/categories/delete/{id}', [App\Http\Controllers\CategoryController::class, 'destroy'])->name('category.destroy');

    //Forum
    Route::get('dashboard/forum/new', [App\Http\Controllers\ForumController::class, 'create'])->name('forum.new');
    Route::post('dashboard/forum/new', [App\Http\Controllers\ForumController::class, 'store'])->name('forum.store');
    Route::get('dashboard/forums', [App\Http\Controllers\ForumController::class, 'index'])->name('forums');

    Route::get('dashboard/forums/{id}', [App\Http\Controllers\ForumController::class, 'edit'])->name('forum');
    Route::get('dashboard/forums/edit/{id}', [App\Http\Controllers\ForumController::class, 'edit'])->name('forum.edit');
    Route::post('dashboard/forums/update/{id}', [App\Http\Controllers\ForumController::class, 'update'])->name('forum.update');
    Route::get('dashboard/forums/delete/{id}', [App\Http\Controllers\ForumController::class, 'destroy'])->name('forum.destroy');

    //Users
    Route::get('/dashboard/users', [App\Http\Controllers\DashboardController::class, 'users']);
    Route::get('/dashboard/admin/profile', [App\Http\Controllers\DashboardController::class, 'profile'])->name('admin.profile');
    Route::get('/dashboard/users/{id}', [App\Http\Controllers\DashboardController::class, 'show']);
    Route::post('/dashboard/users/{id}', [App\Http\Controllers\DashboardController::class, 'destroy'])->name('user.delete');

    Route::get('/dashboard/notifications', [App\Http\Controllers\DashboardController::class, 'notifications'])->name('notifications');
    Route::get('/dashboard/notifications/mark-as-read/{id}', [App\Http\Controllers\DashboardController::class, 'markAsRead'])->name('notification.read');
    Route::get('/dashboard/notifications/delete/{id}', [App\Http\Controllers\DashboardController::class, 'notificationDestroy'])->name('notification.delete');

    Route::get('/dashboard/settings/form', [App\Http\Controllers\DashboardController::class, 'settingsForm'])->name('settings.form');
    Route::post('/dashboard/settings/new', [App\Http\Controllers\DashboardController::class, 'newSetting'])->name('settings.new');
});


//Topic
Route::get('klien/topic/new/{id}', [App\Http\Controllers\DiscussionController::class, 'create'])->name('topic.new');
Route::post('klien/topic/new', [App\Http\Controllers\DiscussionController::class, 'store'])->name('topic.store');
Route::get('klien/topic/{id}', [App\Http\Controllers\DiscussionController::class, 'show'])->name('topic');
Route::post('klien/topic/{id}', [App\Http\Controllers\DiscussionController::class, 'reply'])->name('topic.reply');
Route::get('klien/topic/remove/{id}', [App\Http\Controllers\DiscussionController::class, 'remove'])->name('topic.delete');
Route::get('/topic/reply/delete/{id}', [App\Http\Controllers\DiscussionController::class, 'destroy'])->name('reply.delete');

Route::get('/updates', [App\Http\Controllers\DiscussionController::class, 'updates']);

Route::post('user/update/{id}', [App\Http\Controllers\UserController::class, 'update'])->name('user.update');

Route::post('user/photo/update/{id}', [App\Http\Controllers\FrontendController::class, 'photoUpdate'])->name('user.photo.update');

Route::get('/klien/user/{id}', [App\Http\Controllers\FrontendController::class, 'profile'])->middleware('auth')->name('klien.user.profile');
Route::get('/klien/users', [App\Http\Controllers\FrontendController::class, 'users'])->middleware('auth')->name('klien.users');

Route::post('topics/sort', [App\Http\Controllers\DiscussionController::class, 'topics.sort'])->name('topics.sort');
Route::get('reply/like/{id}', [App\Http\Controllers\DiscussionController::class, 'like'])->name('reply.like');
Route::get('reply/dislike/{id}', [App\Http\Controllers\DiscussionController::class, 'dislike'])->name('reply.dislike');

Route::post('category/search', [App\Http\Controllers\CategoryController::class, 'search'])->name('category.search');

Route::get('blog/home', [App\Http\Controllers\BlogController::class, 'home'])->name('blog.home');
