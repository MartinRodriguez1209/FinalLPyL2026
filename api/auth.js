import { BASE_URL } from "./config";

export async function loginApi(usuario, password) {
  const res = await fetch(`${BASE_URL}/Login.php`, {
    method: "POST",
    credentials: "include",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ usuario, password }),
  });
  return res.json();
}

export async function registroApi(usuario, mail, password) {
  const res = await fetch(`${BASE_URL}/Registro.php`, {
    method: "POST",
    credentials: "include",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ usuario, mail, password }),
  });
  return res.json();
}
