using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QuanLyNhaSach.Models;
using System.Diagnostics;

namespace QuanLyNhaSach.Controllers
{
    public class TacGiaController : Controller
    {
        private QLNSContext db = new QLNSContext();

        public TacGiaController()
        {
            db.Database.Log = l => Debug.Write(l);
        }

        // GET: TACGIA
        public ActionResult Index()
        {
            return View(db.DbTacGia.ToList());
        }

        // GET: TACGIA/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TacGia tACGIA = db.DbTacGia.Find(id);
            if (tACGIA == null)
            {
                return HttpNotFound();
            }
            return View(tACGIA);
        }

        // GET: TACGIA/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TACGIA/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TenTacGia")] TacGia tacgia)
        {
            if (ModelState.IsValid)
            {
                tacgia.MaTacGia = "";
                db.DbTacGia.Add(tacgia);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tacgia);
        }

        // GET: TACGIA/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TacGia tACGIA = db.DbTacGia.Find(id);
            if (tACGIA == null)
            {
                return HttpNotFound();
            }
            return View(tACGIA);
        }

        // POST: TACGIA/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaTacGia, TenTacGia")] TacGia tACGIA)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tACGIA).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tACGIA);
        }

        // GET: TACGIA/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TacGia tACGIA = db.DbTacGia.Find(id);
            if (tACGIA == null)
            {
                return HttpNotFound();
            }
            return View(tACGIA);
        }

        // POST: TACGIA/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            TacGia tACGIA = db.DbTacGia.Find(id);
            db.DbTacGia.Remove(tACGIA);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
