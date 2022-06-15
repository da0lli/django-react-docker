from django.http import JsonResponse


def apiTest(request):
    text = request.GET.get("text", "")

    return JsonResponse({"count": len(text)})
